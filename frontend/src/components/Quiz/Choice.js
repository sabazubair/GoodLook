
import React, {Component} from 'react';
import ListGroup from 'react-bootstrap/ListGroup'


class Choice extends Component {
   Next = () => {
    const choice = this.props.choice;
    this.props.nextQuestion(choice)
  }

  render() {
    const img = this.props.choice.image ? <img src={this.props.choice.image}/> : null;
    return (
      <div className="questionWrap col-4" onClick={this.Next}>
        {this.props.choice.text}
        {img}
        </div>
    );
  }
}
export default Choice;