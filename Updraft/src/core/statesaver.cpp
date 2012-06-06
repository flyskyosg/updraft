#include "statesaver.h"

#include "updraft.h"
#include "ui/mainwindow.h"
#include "filetypemanager.h"
#include "ui/maplayergroup.h"

namespace Updraft {
namespace Core {

StateSaver::StateSaver() {
  updraft->settingsManager->addGroup(
    "state", "Application state", GROUP_HIDDEN, "");

  windowGeometry = updraft->settingsManager->addSetting(
    "state:geometry", "Main window geometry", QByteArray(), GROUP_HIDDEN);
  openDirectory = updraft->settingsManager->addSetting(
    "state:openDirectory", "File open dialog directory",
    QVariant(), GROUP_HIDDEN);
  mapLayers = updraft->settingsManager->addSetting(
    "state:maplayers", "Map layers", QByteArray(), GROUP_HIDDEN);
}

void StateSaver::save() {
  QVariant x;

  windowGeometry->set(updraft->mainWindow->saveGeometry());

  x.setValue(updraft->fileTypeManager->lastDirectory());
  openDirectory->set(x);

  mapLayers->set(updraft->mainWindow->
    getInvisibleRootMapLayerGroup()->saveState());
}

void StateSaver::load() {
  QVariant x;

  updraft->mainWindow->restoreGeometry(windowGeometry->get().toByteArray());

  x = openDirectory->get();
  updraft->fileTypeManager->setLastDirectory(x.value<QDir>());

  updraft->mainWindow->getInvisibleRootMapLayerGroup()->
    restoreState(mapLayers->get().toByteArray());
}

}  // End namespace Core
}  // End namespace Updraft

