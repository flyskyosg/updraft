#ifndef UPDRAFT_SRC_PLUGINS_TASKDECL_TASKDECLARATION_H_
#define UPDRAFT_SRC_PLUGINS_TASKDECL_TASKDECLARATION_H_

#include <QtGui>
#include "../../pluginbase.h"

namespace Updraft {
namespace Core {

class Q_DECL_EXPORT TaskDeclaration: public QObject, public PluginBase {
  Q_OBJECT
  Q_INTERFACES(Updraft::PluginBase)

 public:
  QString getName();

  unsigned getPriority();

  void initialize();

  void deinitialize();
 private:
};

}  // End namespace Core
}  // End namespace Updraft

#endif  // UPDRAFT_SRC_PLUGINS_TASKDECL_TASKDECLARATION_H_

