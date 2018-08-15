import React from "react";

const Pricing = ({prices}) => {
  const listItems = prices.map((price, index)=>{
    return <li key={index}>{price.level}: £{price.cost} per month</li>
  })
  return (
    <React.Fragment>
      <h4>Pricing</h4>
      <ul>
        {listItems}
      </ul>
    </React.Fragment>
  )
};

export default Pricing;
