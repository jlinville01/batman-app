Movie.destroy_all
Movie.create!([{
  title: "Batman: Mask of the Phantasm",
  release_date: Date.parse("Dec 25 1993"),
  synopsis: "In this animated feature set in the 1940s, the troubled yet heroic Batman (Kevin Conroy) is pitted against a mysterious figure who is rubbing out Gotham City's most dangerous criminals, and who many believe is the caped crusader himself. Batman's alter ego, millionaire Bruce Wayne, is about to get married to the lovely Andrea Beaumont (Dana Delany), who helps him recover from his need to avenge his parents' murder -- meaning that his crime-fighting days may be numbered."
}, {
  title: "Batman & Mr. Freeze: SubZero",
  release_date: Date.parse("Mar 17 1998"),
  synopsis: "Mr Freeze kidnaps Barbara Gordon to use her plasma to rejuvenate his dying wife. Leaving Batman and Robin to race against time to save Barbara and stop Freeze's desperate scheme."
}, {
  title: "Batman: Mystery of the Batwoman",
  release_date: Date.parse("Oct 21 2003"),
  synopsis: "As if the Penguin wasn't enough to contend with, a female vigilante has surfaced in Gotham City and her strong-arm tactics give Batman cause for concern."
}])