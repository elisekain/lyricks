users = User.create!([
  {email: "rebecca@example.com", username: "rebecca", password: "rebeccapassword", password_confirmation: "rebeccapassword"},
  {email: "john@example.com", username: "john", password: "johnpassword", password_confirmation: "johnpassword"},
  {email: "darren@example.com", username: "darren", password: "darrenpassword", password_confirmation: "darrenpassword"},
  {email: "susan@example.com", username: "susan", password: "susanpassword", password_confirmation: "susanpassword"},
  {email: "tyler@example.com", username: "tyler", password: "tylerpassword", password_confirmation: "tylerpassword"},
  {email: "paul@example.com", username: "paul", password: "paulpassword", password_confirmation: "paulpassword"},
  {email: "christy@example.com", username: "christy", password: "christypassword", password_confirmation: "christypassword"},
  {email: "michael@example.com", username: "michael", password: "michaelpassword", password_confirmation: "michaelpassword"},
  {email: "andrew@example.com", username: "andrew", password: "andrewpassword", password_confirmation: "andrewpassword"},
  {email: "bonnie@example.com", username: "bonnie", password: "bonniepassword", password_confirmation: "bonniepassword"},
])

tags = Tag.create!([
  {title: "rock"},
  {title: "pop"},
  {title: "classical"},
  {title: "country"},
  {title: "electronic"},
  {title: "jazz"},
  {title: "gospel"},
  {title: "hip hop / rap"},
  {title: "world music"},
  {title: "folk"}
])

cards = Card.create!([
{title: "September", user: users[0], icon_selection: "heart", color_selection: "red", font_selection: "bold", lyrics:
"Do you remember, 21st night of September?
Love was changing the mind of pretenders
While chasing the clouds away
Our hearts were ringing
In the key that our souls were singing
As we danced in the night
Remember, how the stars stole the night away
"},

{title: "Bright Lights", user: users[1], icon_selection: "disk", color_selection: "blue", font_selection: "cursive", lyrics:
"She got out of town
On a railway, New York bound
Took all except my name
Another alien out on Broadway
Some things in this world you just can't change
Some things you can't see until it gets too late
Baby, baby, baby
When all your love is gone
Who will save me
From all I'm up against out in this world?
"},

{title: "A Thousand Miles", user: users[2], icon_selection: "headphones", color_selection: "green", font_selection: "print", lyrics:
"If I could fall into the sky
Do you think time would pass me by?
Cause you know I'd walk a thousand miles
If I could just see you tonight
It's always times like these
When I think of you
And wonder if you ever think of me
Cause everything's so wrong and I don't belong
Living in your precious memory
"},

{title: "Unforgettable", user: users[3], icon_selection: "music", color_selection: "purple", font_selection: "normal", lyrics:
"Unforgettable
In every way,
And forever more
That's how you'll stay.
That's why, darling, it's incredible
That someone so unforgettable
Thinks that I am
Unforgettable, too.
"},

{title: "Every Time You Say Goodbye", user: users[4], icon_selection: "star", color_selection: "orange", font_selection: "cursive", lyrics:
"There’s a restless feeling knocking at my door today
There’s a shadow hanging ’round my garden gate
I read between the lines of words you can’t disguise
Love has gone away and put these tears in my eyes
Look at the sky, baby, see how it cries
Ain’t it just like my tears
Fallin’ down like rain on the ground
Every time you say goodbye
"},

{title: "Angel", user: users[5], icon_selection: "heart", color_selection: "grey", font_selection: "print", lyrics:
"And when I go to sleep at night
I'll thank you for each blessed thing surrounding me
For every fall I'll ever break
Each moment's breath I wanna taste
Confidence and conscience
Decadent extravagance
Never ending providence
For loving when I had the chance
"},

{title: "Witchcraft", user: users[6], icon_selection: "disk", color_selection: "red", font_selection: "normal", lyrics:
"When you arouse the need in me,
My heart says yes indeed in me,
Proceed with what your leading me to
It's such an ancient pitch,
But one I wouldn't switch,
'Cause there's no nicer witch than you
"},

{title: "I Really Really Really Really Really Really Like You", user: users[7], icon_selection: "bolt", color_selection: "purple", font_selection: "normal", lyrics:
"I really wanna stop
But I just gotta taste for it
I feel like I could fly with the ball on the moon
So honey hold my hand you like making me wait for it
I feel I could die walking up to the room, oh yeah
Late night watching television
But how we get in this position?
It's way too soon, I know this isn't love
But I need to tell you something
I really really really really really really like you
And I want you, do you want me, do you want me, too?
"},

{title: "I Knew You Were Trouble", user: users[8], icon_selection: "headphones", color_selection: "grey", font_selection: "print", lyrics:
"I knew you were trouble when you walked in
So shame on me now
Flew me to places I'd never been
So you put me down oh
I knew you were trouble when you walked in
So shame on me now
Flew me to places I'd never been
Now I'm lying on the cold hard ground
Oh, oh, trouble, trouble, trouble
Oh, oh, trouble, trouble, trouble
"},


{title: "Breakeven", user: users[9], icon_selection: "star", color_selection: "orange", font_selection: "cursive", lyrics:
"I'm still alive but I'm barely breathing
Just prayed to a God that I don't believe in
'Cause I got time while she got freedom
'Cause when a heart breaks, no, it don't break even
Her best days were some of my worst
She finally met a man that's gonna put her first
While I'm wide awake she's no trouble sleeping
'Cause when a heart breaks no it don't break even... even... no
"},

])
