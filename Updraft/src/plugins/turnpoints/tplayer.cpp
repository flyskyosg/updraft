#include <QtGui>
#include "tplayer.h"

namespace Updraft {

TPLayer::TPLayer(int layerId_, bool displayed_, const TPFile *file_)
  : layerId(layerId_), file(file_), displayed(displayed_) {
}

TPLayer::~TPLayer() {
  delete file;
}

bool TPLayer::isDisplayed() {
  return displayed;
}

void TPLayer::display(bool displayed_) {
  displayed = displayed_;
}

}  // End namespace Updraft
