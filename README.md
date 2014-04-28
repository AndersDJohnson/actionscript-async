actionscript-async
==================

Async utilities for ActionScript, in the style of the [async] module for Node.js.

Possible alternative to [AS3Commons Async].


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

[async]: https://github.com/caolan/async
[AS3Commons Async]: http://www.as3commons.org/as3-commons-async/index.html
