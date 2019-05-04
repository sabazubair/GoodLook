import React, { Component } from "react";
import axios from "axios";
import ListGroup from 'react-bootstrap/ListGroup'

export default class Recommendations extends Component {
  constructor(props) {
    super(props);
    this.state = {
      outfits:[]
    }
  }

  componentDidMount() {
    axios("/api/v1/recommendations")
    .then(response => {
      // console.log(response.data)
      this.setState({outfits:response.data});
    })
    .catch(error => console.log(error))
  }

  render() {
    const test = this.state.outfits.map(outfit => {
          return <img style={{width:'20%'}} src={outfit.image} />
    })
    return (
        <ListGroup.Item>
          {test}
        </ListGroup.Item>
    )
  }
}