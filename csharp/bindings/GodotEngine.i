/* GodotEngine.i */
%module GodotEngine
%{
#include "scene/2d/canvas_item.h"
#include "scene/2d/node_2d.h"
#include "core/math/math_2d.h"
#include "scene/main/node.h"
#include "core/object.h"
#include "core/ustring.h"
#include "core/variant.h"
#include "scene/2d/sprite.h"
%}

%typemap(csout, excode=SWIGEXCODE) Object* {
    global::System.IntPtr cPtr = $imcall;
    $csclassname ret = InternalHelpers.GetManagedObjectFor(cPtr);
    if (ret == null) {
      ret = new $csclassname(cPtr, false);
    }$excode
    return ret;
  }

%typemap(csout, excode=SWIGEXCODE) Node* {
    global::System.IntPtr cPtr = $imcall;
    $csclassname ret = InternalHelpers.GetManagedObjectFor(cPtr) as $csclassname;
    if (ret == null) {
      ret = new $csclassname(cPtr, false);
    }$excode
    return ret;
  }

%typemap(csout, excode=SWIGEXCODE) Control* {
    global::System.IntPtr cPtr = $imcall;
    $csclassname ret = InternalHelpers.GetManagedObjectFor(cPtr) as $csclassname;
    if (ret == null) {
      ret = new $csclassname(cPtr, false);
    }$excode
    return ret;
  }

%include mString.i
%include mVariant.i
%include mObject.i
%include mNode.i
%include mCanvasItem.i
%include mNode2D.i
%include mSprite.i
%include mVector2.i

