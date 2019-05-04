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

  onClick = (event) => {
    const saved_outfit_id = event.target.getAttribute('id');
    let body = {
      user_id: 2,
      outfit_id: saved_outfit_id
    }

    axios.post('/api/v1/user_outfits',
      body)
    .then((response)=>{
      console.log(response);
      console.log("Outfit has been saved");
    })
  }

  render() {
    const test = this.state.outfits.map(outfit => {
          return <img id={outfit.id} style={{width:'20%'}} src={outfit.image} />
    })
    return (
        <ListGroup.Item onClick={this.onClick}>
          {test}
        </ListGroup.Item>
    )
  }
}