#include "airspaces.h"


namespace Updraft {
namespace Airspaces {

  // Definition of global pointer to coreinterface.
  CoreInterface *g_core = NULL;

Airspaces::Airspaces() {
  mapLayerGroup = NULL;
}

QString Airspaces::getName() {
  return QString("airspaces");
}

void Airspaces::initialize(CoreInterface *coreInterface) {
  g_core = coreInterface;

  // File type registration
  OAirspaceFileReg.category = CATEGORY_PERSISTENT;
  OAirspaceFileReg.extension = ".txt";
  OAirspaceFileReg.typeDescription = tr("Open Airspace file");
  OAirspaceFileReg.roleDescription = tr("Import Open Airspace");
  OAirspaceFileReg.importDirectory = "airspaces";
  OAirspaceFileReg.roleId = IMPORT_OPENAIRSPACE_FILE;
  OAirspaceFileReg.plugin = this;
  g_core->registerFiletype(OAirspaceFileReg);

  // Create map layers items in the left pane.
  mapLayerGroup = g_core->createMapLayerGroup(tr("Airspace"));
  mapLayerGroup->connectCheckedToVisibility();
  // engine = new oaEngine(mapLayerGroup);

  loadImportedFiles();

  qDebug("airspaces loaded");
}

void Airspaces::mapLayerDisplayed(bool value, MapLayerInterface* sender) {
  sender->setVisibility(value);
  // reloadAirspaces();
}

void Airspaces::reloadAirspaces() {
  // delete engine;
  // engine = new oaEngine(mapLayerGroup);

  // loadImportedFiles();

  // mapLayerGroup

  loadImportedFiles();

  qDebug("airspaces reloaded");

  // deinitialize();
  // initialize();
}

void Airspaces::deinitialize() {
  // delete engine;
  // engine = NULL;
  if (mapLayerGroup) {
    delete mapLayerGroup;
    mapLayerGroup = NULL;
  }
  qDebug("airspaces unloaded");
}

bool Airspaces::fileOpen(const QString& fileName, int role) {
  switch (role) {
    case IMPORT_OPENAIRSPACE_FILE:
      // draw openairspace file
      /* mapLayers = engine->Draw(fileName);
      if (!mapLayers) return false;
      for (int i = 0; i < mapLayers->size(); ++i) {
        MapLayerInterface* layer1 = mapLayers->at(i);
        // layer1->setVisible(false);
        layer1->connectSignalChecked
          (this, SLOT(mapLayerDisplayed(bool, MapLayerInterface*)));
        layer1->emitDisplayed(false);
      }
      delete mapLayers;*/

      oaEngine* engine = new oaEngine(mapLayerGroup, g_core);

      QString displayName = fileName.left(fileName.indexOf('.'));
      int cuntSlashes = displayName.count('/');
      displayName = displayName.section('/', cuntSlashes, cuntSlashes);

      mapNodes = engine->Draw(fileName);
      if (!mapNodes) return false;

      MapLayerGroupInterface* fileGroup =
        mapLayerGroup->createMapLayerGroup(displayName);
      fileGroup->connectCheckedToVisibility();
      fileGroup->connectSignalContextMenuRequested(this,
        SLOT(contextMenuRequested(QPoint, MapLayerInterface*)));
      fileGroup->setFilePath(fileName);

      QPair<osg::Node*, QString> pair;
      foreach(pair, *mapNodes) {
        MapLayerInterface *layer =
          fileGroup->createMapLayer(pair.first, pair.second);
        layer->connectCheckedToVisibility();
      }

      // for (int i = 0; i < layers->size(); ++i) {
        // mapLayerGroup->removeMapLayer(layers->at(i));
      // }

      delete mapNodes;

      delete engine;
      engine = NULL;

      return true;
      break;
  }
  return false;
}

void Airspaces::loadImportedFiles() {
  QDir dir(g_core->getDataDirectory() + "/" + OAirspaceFileReg.importDirectory);

  if (!dir.exists()) {
    return;
  }

  QStringList filters("*" + OAirspaceFileReg.extension);
  QStringList entries = dir.entryList(filters, QDir::Files, QDir::Time);

  foreach(QString fileName, entries) {
    fileOpen(dir.absoluteFilePath(fileName), OAirspaceFileReg.roleId);
  }
}

void Airspaces::contextMenuRequested(QPoint pos, MapLayerInterface* sender) {
  QMenu menu;
  menu.addAction(sender->getDeleteAction());
  menu.exec(pos);
}

Q_EXPORT_PLUGIN2(airspaces, Airspaces)

}  // End namespace Airspaces
}  // End namespace Updraft

