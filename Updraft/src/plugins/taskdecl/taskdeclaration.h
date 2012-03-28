#ifndef UPDRAFT_SRC_PLUGINS_TASKDECL_TASKDECLARATION_H_
#define UPDRAFT_SRC_PLUGINS_TASKDECL_TASKDECLARATION_H_

#include <QtGui>
#include "../../pluginbase.h"
#include "../../core/ui/maplayergroup.h"

#include "tasklayer.h"

namespace Updraft {

typedef QList<TaskLayer*> TTaskLayerList;

class Q_DECL_EXPORT TaskDeclaration: public QObject, public PluginBase {
  Q_OBJECT
  Q_INTERFACES(Updraft::PluginBase)

 public:
  TaskDeclaration();

  virtual ~TaskDeclaration();

  QString getName();

  unsigned getPriority();

  void initialize();

  void deinitialize();

  bool fileOpen(const QString &filename, int roleId);

  void fileIdentification(QStringList *roles,
    QString *importDirectory, const QString &filename);

 public slots:
  /// Creates empty task.
  void createTask();

 private:
  enum FileRoles {
    OPEN_TASK_FILE = 1
  };

  QAction* createTaskAction;

  /// List of opened files
  TTaskLayerList layers;

  /// Tasks map layer group
  MapLayerGroupInterface *mapLayerGroup;

  /// Removes instances of all loaded files.
  void unloadFiles();

  /// Creates new layer item, adds item to the left pane
  /// \param file associated data file (is deleted on layer destruction)
  void addLayer(TaskFile *file);

  /// \return Number which is displayed in title of new task
  int getIndexForNewTask();

  friend class TaskLayer;
};

}  // End namespace Updraft

#endif  // UPDRAFT_SRC_PLUGINS_TASKDECL_TASKDECLARATION_H_

