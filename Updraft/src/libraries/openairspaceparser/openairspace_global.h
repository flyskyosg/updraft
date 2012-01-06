#ifndef UPDRAFT_SRC_LIBRARIES_OPENAIRSPACEPARSER_OPENAIRSPACE_GLOBAL_H_
#define UPDRAFT_SRC_LIBRARIES_OPENAIRSPACEPARSER_OPENAIRSPACE_GLOBAL_H_

#include <QtCore/qglobal.h>
#include <QtCore/qvector.h>
#include <QtCore/qfile.h>
#include <QtCore/qtextstream.h>
#include <QtCore/qlist.h>

#include "airspace.h"

#ifdef OPENAIRSPACE_LIB
# define OPENAIRSPACE_EXPORT Q_DECL_EXPORT
#else
# define OPENAIRSPACE_EXPORT Q_DECL_IMPORT
#endif

#endif  // UPDRAFT_SRC_LIBRARIES_OPENAIRSPACEPARSER_OPENAIRSPACE_GLOBAL_H_
