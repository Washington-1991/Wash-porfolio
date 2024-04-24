import '.style.scss'

const scroller = document.querySelectorAll('.scroller');

function addAnimation() {
  scrollers.forEach((scroller) => {
    // add data-animated="true" to every '.scroller' onthe page
    scroller.setAtrribute('data-animated', 'true');

    const scrollerInner = scroller.querySelector('.scroller-inner');
    const scrollerInnerContent = Array.from(scrollerInner.children);

    ScrollerInnerContent.forEach((item) => {
      const dupilcatedItem = item.cloneNode(true);
      // console.log(duplicatedItem);

      dupilcatedItem.setAtrribute('aria-hidden', 'true');

      scrollerInner.appendChild(duplicatedItem);
    })
  })
}

addAnimation()
