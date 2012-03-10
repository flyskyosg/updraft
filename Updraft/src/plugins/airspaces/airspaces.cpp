#include "airspaces.h"


namespace Updraft {
namespace Airspaces {

Airspaces::Airspaces() { }

QString Airspaces::getName() {
  return QString("airspaces");
}

unsigned Airspaces::getPriority() {
  return 0;  // TODO(cestmir): decide on the priority of plugins
}

void Airspaces::initialize() {
  // File type registration
  OAirspaceFileReg.category = CATEGORY_PERSISTENT;
  OAirspaceFileReg.extension = ".txt";
  OAirspaceFileReg.typeDescription = tr("Open Airspace file");
  OAirspaceFileReg.roleDescription = tr("Import Open Airspace");
  OAirspaceFileReg.importDirectory = "airspaces";
  OAirspaceFileReg.roleId = IMPORT_OPENAIRSPACE_FILE;
  OAirspaceFileReg.plugin = this;
  core->registerFiletype(OAirspaceFileReg);

  // Create map layers items in the left pane.
  // QObject* airspacesMenu = core // ->createTreeItem("Airspaces");
  engine = new oaEngine(core->createMapLayerGroup("Airspaces"));
  // MapLayerInterface* layer1;
  // LoadFile("c:/Updraft/CZ2011CTR.txt", 0);
  // LoadFile("c:/Updraft/CZ2011TMA.txt", 0);
  loadImportedFiles();

  qDebug("airspaces laoded");
}

void Airspaces::mapLayerDisplayed(bool value, MapLayerInterface* sender) {
  sender->setVisible(value);
}

void Airspaces::deinitialize() {
  qDebug("airspaces unloaded");
}

bool Airspaces::fileOpen(const QString& fileName, int role) {
  switch (role) {
    case IMPORT_OPENAIRSPACE_FILE:
      // draw openairspace file
      mapLayers = engine->Draw(fileName);
      for (int i = 0; i < mapLayers->size(); ++i) {
        MapLayerInterface* layer1 = mapLayers->at(i);
        layer1->connectSignalDisplayed
          (this, SLOT(mapLayerDisplayed(bool, MapLayerInterface*)));
      }
      delete mapLayers;
      return true;
      break;
  }
  return false;
}

void Airspaces::loadImportedFiles() {
  QDir dir(core->getDataDirectory() + "/" + OAirspaceFileReg.importDirectory);

  if (!dir.exists()) {
    return;
  }

  QStringList filters("*" + OAirspaceFileReg.extension);
  QStringList entries = dir.entryList(filters, QDir::Files, QDir::Time);

  foreach(QString fileName, entries) {
    fileOpen(dir.absoluteFilePath(fileName), OAirspaceFileReg.roleId);
  }
}

Q_EXPORT_PLUGIN2(airspaces, Airspaces)

}  // End namespace Airspaces
}  // End namespace Updraft

