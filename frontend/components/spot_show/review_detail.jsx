import React from 'react';

const ReviewDetail = ({reviews}) => {
  console.log("props",reviews);
  return (
    <ul>
      {reviews.map(review => <li key={review.id}>{review.body}</li>)}
    </ul>
  );
};

export default ReviewDetail;
