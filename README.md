actionscript-async
==================

Async utilities for ActionScript.

```as
import com.AndersDJohnson.async.Async;

// ...

Async.tasks( [
  function ( callback:Function):void {
    // ...
    callback( null /* , ... args */ );
  },
  function ( callback:Function):void {
    // ...
    callback( null /* , ... args */ );
  }
  // ...
], function ( error:Error, results:Array ) {
  // results is now an array with results passed to each task function's callback
}
```

## Examples

```as
import com.AndersDJohnson.async.Async;

// ...

Async.tasks( [
  function ( callback:Function):void {
    callback( null, 'one', 1 );
  },
  function ( callback:Function):void {
    callback( null, 'two', 2 );
  }
], function ( error:Error, results:Array ) {
  // results is now equal to [ ['one', 1], ['two', 2] ] 
}
```
