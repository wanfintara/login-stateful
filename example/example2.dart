/// * try at dartpad online

/*
import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');

  button.onClick
      .timeout(Duration(seconds: 1),
          onTimeout: (sink) => sink.addError('You Lost!!!!'))
      .listen(
        (event) {},
        onError: (err) => print(err),
      );
}
*/

// HTML code
// <button>Click me</button>


/*
import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');
  final InputElement input = querySelector('input');
  
  button.onClick
    .take(4)
    .where((event) => input.value == 'banana')
    .listen(
  		(event) => print('You got it'),
    	onDone: () => print('Nope, wrong guesses.'),
  	);
  
}

<h4>Guess the word!!!</h4>
<input/>
<button>Guess!</button>

*/

/*

import 'dart:html';
import 'dart:async';

void main () {
  final InputElement input = querySelector('input');
  final DivElement div = querySelector('div');
  
  final validator = StreamTransformer.fromHandlers(
  	handleData: (inputValue, sink) {
      if (inputValue.contains('@')) {
        sink.add(inputValue);
      } else {
        sink.addError('Enter a valid email');
      }
    }
  );
  
  input.onInput
    .map((dynamic event) => event.target.value)
  	.transform(validator)
    .listen(
  		(inputValue) {
       	print('that email looks valid');
        div.innerHtml = '';
      },
    	onError: (err) => div.innerHtml = err,
  	);
}


<h4>Enter your email</h4>
<input/>
<div style="color: red;"></div>

*/