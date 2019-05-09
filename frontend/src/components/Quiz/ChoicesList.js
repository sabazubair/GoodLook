
import React, {Component} from 'react';
import Choice from "./Choice.js";

class ChoicesList extends Component {
  render() {
    return (
      <div className="row">
        {this.props.choices.map((choice, index) => {
          return <Choice
          choice={choice}
          nextQuestion={this.props.nextQuestion}
          key={choice.id}
       />
        })}
      </div>
    );
  }
}
export default ChoicesList;