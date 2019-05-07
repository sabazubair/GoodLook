import React, {Component} from 'react';
import { Link } from "react-router-dom";
import { Redirect } from 'react-router-dom';

export default class SingleRecommendation extends Component {
  redirectToLink = () => {
    return <Redirect to= {this.props.outfit.link}/>
  }

  render() {
    return (
      <div>
        <img id={this.props.outfit.id} style={{width:'20%'}} src={this.props.outfit.image} />
        <i className="fas fa-heart" outfit={this.props.outfit} id={this.props.outfit.id} style={{color: this.props.outfit.selected ? 'red' : 'black'}} onClick={this.props.handleClick}></i>
        <p>{this.props.outfit.text}</p>
        <button onClick={this.redirectToLink}>Shop this look</button>
      </div>
    )
  }

}


