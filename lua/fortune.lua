-- fortune printing (from vim-startify)

local list_extend = vim.list_extend

local M = {}

--- @param line string
--- @param max_width number
--- @return table
M.format_line = function(line, max_width)
  if line == '' then return { ' ' } end

  local formatted_line = {}

  -- split line by spaces into list of words
  local words = {}
  local target = '%S+'
  for word in line:gmatch(target) do
    table.insert(words, word)
  end

  local bufstart = ' '
  local buffer = bufstart
  for i, word in ipairs(words) do
    if (#buffer + #word) <= max_width then
      buffer = buffer .. word .. ' '
      if i == #words then table.insert(formatted_line, buffer:sub(1, -2)) end
    else
      table.insert(formatted_line, buffer:sub(1, -2))
      buffer = bufstart .. word .. ' '
      if i == #words then table.insert(formatted_line, buffer:sub(1, -2)) end
    end
  end
  -- right-justify text if the line begins with -
  if line:sub(1, 1) == '-' then
    for i, val in ipairs(formatted_line) do
      local space = string.rep(' ', max_width - #val - 2)
      formatted_line[i] = space .. val:sub(2, -1)
    end
  end
  return formatted_line
end

--- @param fortune table
--- @param max_width number
--- @return table
M.format_fortune = function(fortune, max_width)
  -- Converts list of strings to one formatted string (with linebreaks)
  local formatted_fortune = { ' ' } -- adds spacing between menu and footer
  for _, line in ipairs(fortune) do
    local formatted_line = M.format_line(line, max_width)
    formatted_fortune = list_extend(formatted_fortune, formatted_line)
  end
  return formatted_fortune
end

-- selects an entry from fortune_list randomly
local random_fortune = function(fortune_list)
  math.randomseed(os.time())
  local ind = math.random(1, #fortune_list)
  return fortune_list[ind]
end

M.fortune_list = {
  short = {
    { "If you don't finish then you're just busy, not productive.", '', '- Anonymous' },
    {
      'Adapting old programs to fit new machines usually means adapting new machines to behave like old ones.',
      '',
      '- Alan Perlis',
    },
    {
      'Walking on water and developing software from a specification are easy if both are frozen.',
      '',
      '- Edward V Berard',
    },
    { 'Talk is cheap. Show me the code.', '', '- Linus Torvalds' },
    { 'In God we trust. All others must bring data.', '', '- W. Edwards Deming' },
    { "In theory, theory and practice are the same. In practice, they're not.", '', '- Yoggi Berra' },
    {
      'Programming is like sex. One mistake and you have to support it for the rest of your life.',
      '',
      '- Michael Sinz',
    },

    {
      'You can use an eraser on the drafting table or a sledgehammer on the construction site.',
      '',
      '- Frank Lloyd Wright',
    },
    {
      'System programmers are the high priests of a low cult.',
      '',
      '- Robert S. Barton',
    },
    {
      'A good programmer is someone who always looks both ways before crossing a one-way street.',
      '',
      '- Doug Linder',
    },
    {
      "I don't care if it works on your machine! We are not shipping your machine.",
      '',
      '- Vidiu Platon',
    },
    {
      'Fix the cause, not the symptom.',
      '',
      '- Steve Maguire',
    },
    {
      "It's all talk until the code runs.",
      '',
      '- Ward Cunningham',
    },
    {
      'Given enough eyeballs, all bugs are shallow.',
      '',
      '- Linus Torvalds',
    },
    {
      'A clever person solves a problem. A wise person avoids it.',
      '',
      '- Albert Einstein',
    },
    {
      'Being a good software engineer is 3% talent, 97% not being distracted by the internet.',
      '',
      '- Unknown',
    },
    {
      'Any sufficiently advanced technology is indistinguishable from magic.',
      '',
      '- Arthur C. Clarke',
    },
    {
      "A ship in port is safe, but that's not what ships are built for.",
      '',
      '- Grace Hopper',
    },
    {
      'The imposter syndrome is real. Luckily, it goes away.',
      '',
      '- Kimber Lockhart',
    },
    {
      'Know how to learn. Then, want to learn.',
      '',
      '- Katherine Johnson',
    },
    {
      "Never trust a computer you can't throw out a window.",
      '',
      '- Steve Wozniak',
    },
    {
      'When in doubt, use brute force.',
      '',
      '- Ken Thompson',
    },
    {
      'Software comes from heaven when you have good hardware.',
      '',
      '- Ken Olsen',
    },
    {
      'There is always one more bug to fix.',
      '',
      '- Ellen Ullman',
    },
    {
      'We have to stop optimizing for programmers and start optimizing for users.',
      '',
      '- Jeff Atwood',
    },
    {
      'There is a big difference between making a simple product & making a product simple.',
      '',
      '- Des Traynor',
    },
    {
      'If the code and the comments do not match, possibly both are incorrect.',
      '',
      '- Norm Schryer',
    },
    {
      'Before software can be reusable it first has to be usable.',
      '',
      '- Ralph Johnson',
    },
    {
      'If you optimize everything, you will always be unhappy.',
      '',
      '- Donald Knuth',
    },
    {
      'Testing can only prove the presence of bugs, not their absence.',
      '',
      '- Edsger W. Dijkstra',
    },
    {
      'Your most unhappy customers are your greatest source of learning.',
      '',
      '- Bill Gates',
    },
    {
      'Small minds are concerned with the extraordinary, great minds with the ordinary.',
      '',
      '- Blaise Pascal',
    },
    {
      'The most disastrous thing that you can ever learn is your first programming language.',
      '',
      '- Alan Kay',
    },
    {
      'Optimism is an occupational hazard of programming. Feedback is the treatment.',
      '',
      '- Kent Beck',
    },
    {
      "I'm not a great programmer. I'm just a good programmer with great habits.",
      '',
      '- Kent Beck',
    },
    {
      'Everyday life is like programming, I guess. If you love something, you can put beauty into it.',
      '',
      '- Donald Knuth',
    },
    { 'One of my most productive days was throwing away 1000 lines of code.', '', '- Ken Thompson' },
    {
      'Debugging becomes significantly easier if you first admit that you are the problem.',
      '',
      '- William Laeder',
    },
    { 'Computers are fast; developers keep them slow.', '', '- Anonymous' },
    { "Don't comment bad code – rewrite it.", '', '- Brian Kernighan' },
    { 'First, solve the problem. Then.', '', 'John Johnson' },
    { 'The computer was born to solve problems that did not exist before.', '', '- Bill Gates' },
    { 'Make it work, make it right, make it fast.', '', 'Kent Beck' },

    { 'Easy things should be easy and hard things should be possible.', '', '- Larry Wall' },
    { 'Nothing is more permanent than a temporary solution.', '', '- Anonymous' },
    {
      'All programming is an exercise in caching.',
      '',
      '- Terje Mathisen',
    },
    {
      'Software is hard.',
      '',
      '- Donald Knuth',
    },
    {
      'They did not know it was impossible, so they did it!',
      '',
      '- Mark Twain',
    },
    {
      '640K ought to be enough for anybody.',
      '',
      '- Bill Gates, 1981',
    },
    {
      'To understand recursion, one must first understand recursion.',
      '',
      '- Stephen Hawking',
    },
    { 'Testing leads to failure, and failure leads to understanding.', '', '- Burt Rutan' },
    { 'The best error message is the one that never shows up.', '', '- Thomas Fuchs' },
    { "Don't write better error messages, write code that doesn't need them.", '', '- Jason C. McDonald' },
    { 'Code never lies, comments sometimes do.', '', '— Ron Jeffries' },
    { "Laziness is a programmer's main virtue.", '', '— Larry Wall' },
    { 'If, at first, you do not succeed, call it version 1.0.', '', '— Khayri R.R. Woulfe' },
    { 'When I wrote this code, only God and I understood what I did. Now only God knows.', '', '— Anonymous' },
    { 'What one programmer can do in one month, two programmers can do in two months.', '', '— Fred Brooks' },
    { 'Truth can only be found in one place: the code.', '', '- Robert C. Martin' },
    {
      'Fools ignore complexity. Pragmatists suffer it. Some can avoid it. Geniuses remove it.',
      '',
      '- Alan Perlis',
    },
    { "Code is like humor. When you have to explain it, it's bad.", '', '- Cory House' },
    {
      'The best thing about a boolean is even if you are wrong, you are only off by a bit.',
      '',
      '- Anonymous',
    },
    { 'A LISP programmer knows the value of everything, but the cost of nothing.', '', '- Alan J. Perlis' },
    { 'Think twice, code once.', '', '- Anonymous' },
    { 'No matter how far down the wrong road you have gone, turn back now.', '', '- Anonymous' },
    { 'Why do we never have time to do it right, but always have time to do it over?', '', '- Anonymous' },
    { 'Weeks of programming can save you hours of planning.', '', '- Anonymous' },
    { 'To iterate is human, to recurse divine.', '', '- L. Peter Deutsch' },
    { 'Computers are useless. They can only give you answers.', '', '- Pablo Picasso' },
    { 'Almost every programming language is overrated by its practitioners.', '', '- Larry Wall' },
    { 'Fancy algorithms are slow when n is small, and n is usually small.', '', '- Rob Pike' },
    { 'Methods are just functions with a special first argument.', '', '- Andrew Gerrand' },
    {
      "If you don't make mistakes, you're not working on hard enough problems.",
      '',
      '- Frank Wilczek',
    },
    {
      "If you don't start with a spec, every piece of code you write is a patch.",
      '',
      '- Leslie Lamport',
    },
    {
      'Caches are bugs waiting to happen.',
      '',
      '- Rob Pike',
    },
    { 'All loops are infinite ones for faulty RAM modules.', '', '- Anonymous' },
    { 'All idioms must be learned. Good idioms only need to be learned once.', '', '- Alan Cooper' },
    {
      "If you don't fail at least 90% of the time, you're not aiming high enough.",
      '',
      '- Alan Kay',
    },
    { 'Invest regularly in your knowledge portfolio. Make learning a habit.', '', '- Anonymous' },
    { 'It is easier to change the specification to fit the program than vice versa.', '', '- Alan Perlis' },
    { 'Simplicity does not precede complexity, but follows it.', '', '- Alan Perlis' },
    { 'Optimization hinders evolution.', '', '- Alan Perlis' },
    { 'recursion is the root of computation since it trades description for time.', '', '- Alan Perlis' },
    { 'Experience is the name everyone gives to their mistakes.', '', '- Oscar Wilde' },
    { "People don't care about what you say, they care about what you build.", '', '- Mark Zuckerberg' },
    {
      "Coding ain't done til all the Tests run.",
      '',
      'Nuff said.',
    },
    {
      'I would rather die of passion than of boredom.',
      '',
      '- Vincent Van Gogh',
    },

    {
      'Controlling complexity is the essence of computer programming.',
      '',
      '- Brian Kernighan',
    },
    {
      'The function of good software is to make the complex appear to be simple.',
      '',
      '- Grady Booch',
    },
    {
      'There are only two industries that refer to their customers as "users".',
      '',
      '- Edward Tufte',
    },
    {
      'First, solve the problem. Then, write the code.',
      '',
      '- John Johnson',
    },

    {
      'The question of whether computers can think is like the question of whether submarines can swim.',
      '',
      '- Edsger W. Dijkstra',
    },
    {
      "The city's central computer told you? R2D2, you know better than to trust a strange computer!",
      '',
      '- C3PO',
    },

    {
      'All problems in computer science can be solved with another level of indirection.',
      '',
      '- David Wheeler',
    },

    {
      'The best way to predict the future is to invent it.',
      '',
      '- Alan Kay',
    },

    {
      "Code is like humor. When you have to explain it, it's bad.",
      '',
      '- Cory House',
    },

    {
      'real artists ship.',
      '',
      '- Steve Jobs',
    },

    {
      "It's not a bug. It's an undocumented feature!",
      '',
      '- Anonymous',
    },
    {
      'Patterns mean I have run out of language.',
      '',
      '- Rich Hickey',
    },

    {
      'Programming is the art of algorithm design and the craft of debugging errant code.',
      '',
      '- Ellen Ullman',
    },

    {
      'To iterate is human, to recurse divine.',
      '',
      '- L. Peter Deutsch',
    },

    {
      'Code as if the next person to maintain your code is a homicidal maniac who knows where you live.',
      '',
      '- Anonymous',
    },

    {
      'The only way to go fast is to go well.',
      '',
      '- Robert C. Martin',
    },
    {
      'A misplaced decimal point will always end up where it will do the greatest damage.',
      '',
      '- Anonymous',
    },
  },
  long = {
    {
      'Computer science education cannot make anybody an expert programmer any more than studying brushes and pigment can make somebody an expert painter.',
      '',
      '- Eric S. Raymond',
    },
    {
      "You can't have great software without a great team, and most software teams behave like dysfunctional families.",
      '',
      '- Jim McCarthy',
    },

    {
      'People think that computer science is the art of geniuses but the actual reality is the opposite, just many people doing things that build on each other, like a wall of mini stones.',
      '',
      '- Donald Knuth',
    },
    {
      'Most of you are familiar with the virtues of a programmer. There are three, of course: laziness, impatience, and hubris.',
      '',
      '- Larry Wall',
    },
    {
      'Most good programmers do programming not because they expect to get paid or get adulation by the public, but because it is fun to program.',
      '',
      '- Linus Torvalds',
    },
    {
      'Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.',
      '',
      '- Martin Golding',
    },
    {
      "Nine people can't make a baby in a month. (Regarding the addition of more programmers to get a project completed faster)",
      '',
      '- Fred Brooks',
    },
    {
      'Any fool can write code that a computer can understand. Good programmers write code that humans can understand.',
      '',
      '- Martin Fowler',
    },

    {
      'If builders built buildings the way programmers wrote programs, then the first woodpecker that came along would destroy civilization.',
      '',
      '- Gerald Weinberg',
    },
    {
      'Some people, when confronted with a problem, think "I know, I\'ll use regular expressions".Now they have two problems.',
      '',
      '- Jamie Zawinski',
    },

    {
      'The first 90% of the code accounts for the first 90% of the development time. The remaining 10% of the code accounts for the other 90% of the development time.',
      '',
      '- Tom Cargill',
    },
    {
      'There are only two kinds of languages: the ones people complain about and the ones nobody uses.',
      '',
      '- Bjarne Stroustrup',
    },

    {
      "Once a new technology starts rolling, if you're not part of the steamroller, you're part of the road.",
      '',
      '- Stewart Brand',
    },

    {
      'Give someone a program; you frustrate them for a day; teach them how to program, and you frustrate them for a lifetime.',
      '',
      '- David Leinweber',
    },

    {
      'If debugging is the process of removing bugs, then programming must be the process of putting them in.',
      '',
      '- Sam Redwine',
    },

    {
      "Sometimes it pays to stay in bed on Monday, rather than spending the rest of the week debugging Monday's code.",
      '',
      '- Dan Salomon',
    },

    {
      "No one in the brief history of computing has ever written a piece of perfect software. It's unlikely that you'll be the first.",
      '',
      '- Andy Hunt',
    },
    {
      "A programming language is for thinking about programs, not for expressing programs you've already thought of. It should be a pencil, not a pen.",
      '',
      '- Paul Graham',
    },
    {
      "Sometimes it pays to stay in bed on Monday rather than spending the rest of the week debugging Monday's code.",
      '',
      '- Dan Salomon',
    },
    {
      'Bad programmers worry about the code. Good programmers worry about data structures and their relationships.',
      '',
      '- Linus Torvalds',
    },

    {
      "It's better to wait for a productive programmer to become available than it is to wait for the first available programmer to become productive.",
      '',
      '- Steve McConnell',
    },
    {
      'Any fool can write code that a computer can understand. Good programmers write code that humans can understand.',
      '',
      '- Martin Fowler',
    },

    {
      'Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it.',
      '',
      '- Rajanand',
    },

    {
      'Everybody in this country should learn to program a computer because it teaches you how to think.',
      '',
      '- Steve Jobs',
    },

    {
      'Measuring programming progress by lines of code is like measuring aircraft building progress by weight.',
      '',
      '- Bill Gates',
    },
    {
      "In programming, the hard part isn't solving problems but deciding what problems to solve.",
      '',
      '- Paul Graham',
    },

    {
      'If debugging is the process of removing software bugs, then programming must be the process of putting them in.',
      '',
      '- Edsger W. Dijkstra',
    },

    {
      'Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.',
      '',
      '- Rick Osborne',
    },

    {
      'As a programmer, it is your job to put yourself out of business. What you do today can be automated tomorrow.',
      '',
      '- Doug McIlroy',
    },

    {
      "Your mind is programmable – if you're not programming your mind, else will program it for you.",
      '',
      '- Jeremy Hammond',
    },

    {
      "The trouble with programmers is that you can never tell what a programmer is doing until it's too late.",
      '',
      '- Seymour Cray',
    },

    {
      'Active programming consists of the design of new programs rather than the contemplation of old programs.',
      '',
      '- Niklaus Wirth',
    },
    {
      "Making code does what it's supposed to do is the easy part. Handling the myriad ways it can go wrong is the real work.",
      '',
      '- Aaron Lozier',
    },
    {
      'Most good programmers do programming not because they expect to get paid or get adulation by the public but because it is fun to program.',
      '',
      '- Linus Torvalds',
    },
    {
      'It is far, far easier to make a correct program fast than to make a fast program correct.',
      '',
      '- Herb Sutter',
    },
    {
      'Every great developer you know got there by solving problems they were unqualified to solve until they actually did it.',
      '',
      '- Patrick McKenzie',
    },
    {
      'If debugging is the process of removing software bugs, then programming must be the process of putting them in.',
      '',
      '- Edsger Dijkstra',
    },
    {
      'C makes it easy to shoot yourself in the foot; C++ makes it harder, but when you do, it blows away your whole leg.',
      '',
      '- Bjarne Stroustrup',
    },

    {
      'Programs must be written for people to read, and only incidentally for machines to execute.',
      '',
      '- Harold Abelson',
    },
    {
      "In programming, if someone tells you you're overcomplicating it, they're either 10 steps behind you or 10 steps ahead of you.",
      '',
      '- Andrew Clark',
    },

    {
      'Give someone a program; you frustrate them for a day; teach them how to program, and you frustrate them for a lifetime.',
      '',
      '- David Leinweber',
    },

    {
      'It is better to have 100 functions operate on one data structure than 10 functions on 10 data structures.',
      '',
      '- Alan Perlis',
    },
    {
      'There is nothing quite so useless as doing with great efficiency something that should not be done at all.',
      '',
      '- Peter Drucker',
    },

    {
      'If a system is to serve the creative spirit, it must be entirely comprehensible to a single individual.',
      '',
      '- Anonymous',
    },
    {
      "The computing scientist's main challenge is not to get confused by the complexities of his own making.",
      '',
      '- Edsger W. Dijkstra',
    },
    {
      "Progress in a fixed context is almost always a form of optimization. Creative acts generally don't stay in the context that they are in.",
      '',
      '- Alan Kay',
    },
    {
      'The essence of XML is this: the problem it solves is not hard, and it does not solve the problem well.',
      '',
      '- Phil Wadler',
    },
    {
      'A good programmer is someone who always looks both ways before crossing a one-way street.',
      '',
      '- Doug Linder',
    },
    {
      'Always code as if the person who ends up maintaining your code is a violent psychopath who knows where you live.',
      '',
      '- John Woods',
    },
    {
      'Unix was not designed to stop its users from doing stupid things, as that would also stop them from doing clever things.',
      '',
      '- Anonymous',
    },
    {
      'Contrary to popular belief, Unix is user friendly. It just happens to be very selective about who it decides to make friends with.',
      '',
      '- Anonymous',
    },
    {
      'Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away.',
      '',
      '- Anonymous',
    },

    {
      "dd is horrible on purpose. It's a joke about OS/360 JCL. But today it's an internationally standardized joke. I guess that says it all.",
      '',
      '- Rob Pike',
    },
    {
      'For a successful technology, reality must take precedence over public relations, for Nature cannot be fooled.',
      '',
      '- Richard Feynman',
    },
    {
      'If programmers were electricians, parallel programmers would be bomb disposal experts. Both cut wires.',
      '',
      '- Bartosz Milewski',
    },

    {
      'Care about your craft. Why spend your life developing software unless you care about doing it well?',
      '',
      '- Anonymous',
    },
    {
      "Provide options, don't make lame excuses.Instead of excuses, provide options. Don't say it can't be done; explain what can be done.",
      '',
      '- Anonymous',
    },
    {
      "Be a catalyst for change.You can't force change on people. Instead, show them how the future might be and help them participate in creating it.",
      '',
      '- Anonymous',
    },
    {
      "Make quality a requirements issue.Involve your users in determining the project's real quality requirements.",
      '',
      '- Anonymous',
    },
    {
      "Critically analyze what you read and hear. Don't be swayed by vendors, media hype, or dogma. Analyze information in terms of you and your project.",
      '',
      '- Anonymous',
    },
    {
      "DRY - Don't Repeat Yourself. Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.",
      '',
      '- Anonymous',
    },
    {
      'Eliminate effects between unrelated things. Design components that are self-contained, independent, and have a single, well-defined purpose.',
      '',
      '- Anonymous',
    },
    {
      'Use tracer bullets to find the target.Tracer bullets let you home in on your target by trying things and seeing how close they land.',
      '',
      '- Anonymous',
    },
    { "Program close to the problem domain. Design and code in your user's language.", '', '- Anonymous' },
    {
      'Iterate the schedule with the code. Use experience you gain as you implement to refine the project time scales.',
      '',
      '- Anonymous',
    },
    {
      "Use the power of command shells.Use the shell when graphical user interfaces don't cut it.",
      '',
      '- Anonymous',
    },
    {
      'Always use source code control.Source code control is a time machine for your work - you can go back.',
      '',
      '- Anonymous',
    },
    {
      "Don't panic when debugging. Take a deep breath and THINK! about what could be causing the bug.",
      '',
      '- Anonymous',
    },
    {
      "Don't assume it - prove it.Prove your assumptions in the actual environment - with real data and boundary conditions.",
      '',
      '- Anonymous',
    },
    {
      'Write code that writes code.Code generators increase your productivity and help avoid duplication.',
      '',
      '- Anonymous',
    },
    {
      'Design With contracts.Use contracts to document and verify that code does no more and no less than it claims to do.',
      '',
      '- Anonymous',
    },
    {
      'Use assertions to prevent the impossible.Assertions validate your assumptions. Use them to protect your code from an uncertain world.',
      '',
      '- Anonymous',
    },
    {
      'Finish what you start.Where possible, the routine or object that allocates a resource should be responsible for deallocating it.',
      '',
      '- Anonymous',
    },
    {
      "Configure, don't integrate.Implement technology choices for an application as configuration options, not through integration or engineering.",
      '',
      '- Anonymous',
    },
    {
      "Analyze workflow to improve concurrency.Exploit concurrency in your user's workflow.",
      '',
      '- Anonymous',
    },
    {
      "Always design for concurrency.Allow for concurrency, and you'll design cleaner interfaces with fewer assumptions.",
      '',
      '- Anonymous',
    },
    {
      'Use blackboards to coordinate workflow.Use blackboards to coordinate disparate facts and agents, while maintaining independence and isolation among participants.',
      '',
      '- Anonymous',
    },
    {
      'Estimate the order of your algorithms.Get a feel for how long things are likely to take before you write code.',
      '',
      '- Anonymous',
    },
    {
      'Refactor early, refactor often.Just as you might weed and rearrange a garden, rewrite, rework, and re-architect code when it needs it. Fix the root of the problem.',
      '',
      '- Anonymous',
    },
    {
      "Test your software, or your users will.Test ruthlessly. Don't make your users find bugs for you.",

      '',
      '- Anonymous',
    },
    {
      "Don't gather requirements - dig for them. Requirements rarely lie on the surface. They're buried deep beneath layers of assumptions, misconceptions, and politics.",
      '',
      '- Anonymous',
    },
    {
      'Abstractions live longer than details.Invest in the abstraction, not the implementation',
      '',
      '- Anonymous',
    },
    {
      "Some things are better done than described. Don't fall into the specification spiral - at some point you need to start coding.",
      '',
      '- Anonymous',
    },
    {
      "Costly tools don't produce better designs. Beware of vendor hype, industry dogma, and the aura of the price tag. Judge tools on their merits.",
      '',
      '- Anonymous',
    },
    {
      "Don't use manual procedures. A shell script or batch file will execute the same instructions, in the same order, time after time.",
      '',
      '- Anonymous',
    },

    {
      "Test state coverage, not code coverage.Identify and test significant program states. Just testing lines of code isn't enough.",
      '',
      '- Anonymous',
    },
    {
      'English is just a programming language.Write documents as you would write code: honor the DRY principle, use metadata, MVC, automatic generation, and so on.',
      '',
      '- Anonymous',
    },
    {
      "Gently exceed your users' expectations.Come to understand your users' expectations, then deliver just that little bit more.",
      '',
      '- Anonymous',
    },
    {
      'Think about your work.Turn off the autopilot and take control. Constantly critique and appraise your work.',
      '',
      '- Anonymous',
    },
    {
      "Don't live with broken windows.Fix bad designs, wrong decisions, and poor code when you see them.",
      '',
      '- Anonymous',
    },
    {
      "Remember the big picture.Don't get so engrossed in the details that you forget to check what's happening around you.",
      '',
      '- Anonymous',
    },

    {
      "It's both what you say and the way you say it.There's no point in having great ideas if you don't communicate them effectively.",
      '',
      '- Anonymous',
    },
    {
      "Make it easy to reuse. If it's easy to reuse, people will. Create an environment that supports reuse.",
      '',
      '- Anonymous',
    },
    {
      'There are no final decisions. No decision is cast in stone. Instead, consider each as being written in the sand at the beach, and plan for change.',
      '',
      '- Anonymous',
    },
    {
      'Prototype to learn. Prototyping is a learning experience. Its value lies not in the code you produce, but in the lessons you learn.',
      '',
      '- Anonymous',
    },
    {
      "Estimate to avoid surprises. Estimate before you start. You'll spot potential problems up front.",
      '',
      '- Anonymous',
    },
    {
      "Keep knowledge in plain text. Plain text won't become obsolete. It helps leverage your work and simplifies debugging and testing.",
      '',
      '- Anonymous',
    },
    {
      'Use a single editor well. The editor should be an extension of your hand; make sure your editor is configurable, extensible, and programmable.',
      '',
      '- Anonymous',
    },
    {
      "Fix the problem, not the blame. It doesn't really matter whether the bug is your fault or someone else's - it is still your problem, and it still needs to be fixed.",
      '',
      '- Anonymous',
    },
    {
      '"Select" isn\'t broken.It is rare to find a bug in the OS or the compiler, or even a third-party product or library. The bug is most likely in the application.',
      '',
      '- Anonymous',
    },
    {
      'Learn a text manipulation language. You spend a large part of each day working with text. Why not have the computer do some of it for you?',
      '',
      '- Anonymous',
    },
    {
      "You can't write perfect software. Software can't be perfect. Protect your code and users from the inevitable errors.",
      '',
      '- Anonymous',
    },
    {
      'Crash early. A dead program normally does a lot less damage than a crippled one.',
      '',
      '- Anonymous',
    },
    {
      'Use exceptions for exceptional problems. Exceptions can suffer from all the readability and maintainability problems of classic spaghetti code. Reserve exceptions for exceptional things.',
      '',
      '- Anonymous',
    },
    {
      'Minimize coupling between modules.Avoid coupling by writing "shy" code and applying the Law of Demeter.',
      '',
      '- Anonymous',
    },
    {
      'Put abstractions in code, details in metadata.Program for the general case, and put the specifics outside the compiled code base.',
      '',
      '- Anonymous',
    },
    {
      'Design using services.Design in terms of services-independent, concurrent objects behind well-defined, consistent interfaces.',
      '',
      '- Anonymous',
    },
    {
      'Separate views from models.Gain flexibility at low cost by designing your application in terms of models and views.',
      '',
      '- Anonymous',
    },
    {
      "Don't program by coincidence. Rely only on reliable things. Beware of accidental complexity, and don't confuse a happy coincidence with a purposeful plan.",
      '',
      '- Anonymous',
    },
    {
      "Test your estimates. Mathematical analysis of algorithms doesn't tell you everything. Try timing your code in its target environment.",
      '',
      '- Anonymous',
    },
    {
      'Design to test. Start thinking about testing before you write a line of code.',
      '',
      '- Anonymous',
    },
    {
      "Don't use wizard code you don't understand. Wizards can generate reams of code. Make sure you understand all of it before you incorporate it into your project.",
      '',
      '- Anonymous',
    },
    {
      "Work with a user to think like a user. It's the best way to gain insight into how the system will really be used.",
      '',
      '- Anonymous',
    },
    {
      'Use a project glossary. Create and maintain a single source of all the specific terms and vocabulary for a project.',
      '',
      '- Anonymous',
    },
    {
      "Start when you're ready. You've been building experience all your life. Don't ignore niggling doubts.",
      '',
      '- Anonymous',
    },
    {
      "Don't be a slave to formal methods. Don't blindly adopt any technique without putting it into the context of your development practices and capabilities.",
      '',
      '- Anonymous',
    },
    {
      "Organize teams around functionality. Don't separate designers from coders, testers from data modelers. Build teams the way you build code.",
      '',
      '- Anonymous',
    },
    {
      'Test early. Test often. Test automatically. Tests that run with every build are much more effective than test plans that sit on a shelf.',
      '',
      '- Anonymous',
    },
    {
      'Use saboteurs to test your testing. Introduce bugs on purpose in a separate copy of the source to verify that testing will catch them.',
      '',
      '- Anonymous',
    },
    {
      'Find bugs once. Once a human tester finds a bug, it should be the last time a human tester finds that bug. Automatic tests should check for it from then on.',
      '',
      '- Anonymous',
    },
    {
      'Sign your work. Craftsmen of an earlier age were proud to sign their work. You should be, too.',
      '',
      '- Anonymous',
    },

    {
      'Abstraction is not about vagueness, it is about being precise at a new semantic level.',
      '',
      '- Edsger W. Dijkstra',
    },

    {
      'I\'ve finally learned what "upward compatible" means. It means we get to keep all our old mistakes.',
      '',
      '- Dennie van Tassel',
    },
    {
      "There are two major products that come out of Berkeley: LSD and UNIX. We don't believe this to be a coincidence.",
      '',
      '- Jeremy S. Anderson',
    },
    {
      "The bulk of all patents are crap. Spending time reading them is stupid. It's up to the patent owner to do so, and to enforce them.",
      '',
      '- Linus Torvalds',
    },

    {
      'Most of you are familiar with the virtues of a programmer. There are three, of course: laziness, impatience, and hubris.',
      '',
      '- Larry Wall',
    },

    {
      'Measuring programming progress by lines of code is like measuring aircraft building progress by weight.',
      '',
      '- Bill Gates',
    },

    {
      "Don't worry if it doesn't work right. If everything did, you'd be out of a job.",
      '',
      "- Mosher's Law of Software Engineering",
    },

    {
      'Functions delay binding; data structures induce binding. Moral: Structure data late in the programming process.',
      '',
      '- Alan J. Perlis',
    },

    {
      "If you can't explain something to a six-year-old, you really don't understand it yourself.",
      '',
      '- Albert Einstein',
    },

    {
      'Question: How does a large software project get to be one year late? Answer: One day at a time!',
      '',
      '- Anonymous',
    },
    {
      'If debugging is the process of removing bugs, then programming must be the process of putting them in.',
      '',
      '- Edsger W. Dijkstra',
    },

    {
      'Developing tolerance for imperfection is the key factor in turning chronic starters into consistent finishers.',
      '',
      '- Jon Acuff',
    },
    {
      'Every great developer you know got there by solving problems they were unqualified to solve until they actually did it.',
      '',
      '- Patrick McKenzie',
    },
    {
      "The average user doesn't give a damn what happens, as long as (1) it works and (2) it's fast.",
      '',
      '- Daniel J. Bernstein',
    },
    {
      'Walking on water and developing software from a specification are easy if both are frozen.',
      '',
      '- Edward V. Berard',
    },
    {
      'Be curious. Read widely. Try new things. I think a lot of what people call intelligence boils down to curiosity.',
      '',
      '- Aaron Swartz',
    },
  },
}

local options = {
  max_width = 60,
  form = 'short',
}

--- @param opts number|table? optional
M.setup = function(opts)
  if opts ~= nil then options = vim.tbl_extend('force', options, opts) end
end

--- @return table
M.get_fortune = function()
  local fortune = random_fortune(M.fortune_list[options.form])
  local formatted_fortune = M.format_fortune(fortune, options.max_width)

  return formatted_fortune
end

return M
