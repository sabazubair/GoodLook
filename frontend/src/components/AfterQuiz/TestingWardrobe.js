import React, { Component } from "react";
import axios from "axios";
import ListGroup from 'react-bootstrap/ListGroup'

export default class TestingWardrobe extends Component {
  constructor(props) {
    super(props);
    this.state = {
      outfits:[]
    }
  }

  componentDidMount() {
    axios("/api/v1/wardrobe")
    .then(response => {
      // console.log(response.data)
      this.setState({outfits:response.data});
    })
    .catch(error => console.log(error))
  }

  render() {
    const test = this.state.outfits.map(outfit => {
          return <img id={outfit.outfit.id} style={{width:'20%'}} src={outfit.outfit.image} />
    })
    return (
        <ListGroup.Item onClick={this.onClick}>
          {test}
        </ListGroup.Item>
    )
  }
}