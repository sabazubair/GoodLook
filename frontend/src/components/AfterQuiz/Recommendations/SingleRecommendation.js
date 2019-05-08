import React from 'react';

export default ({outfit, handleClick}) => {
 return (
   <div className="recommendation-outer col-4">
    <div className="recommendation-inner">
     <img id={outfit.id} style={{width:'100% '}} src={outfit.image} />
      <div className="row recommendation-controls">
        <div className="col-1">
          <i className="fas fa-heart" outfit={outfit} id={outfit.id} style={{ color: outfit.selected ? 'red' : 'black' }} onClick={handleClick}></i>
        </div>
        <div className="col-6">
          <p>{outfit.text}</p>
        </div>
        <div className="col-5">
          <button><a style={{ color: "black" }} target='_blank' href= {outfit.link}>Shop this look</a></button>
        </div>
      </div>
    </div>
  </div>
 )
}


