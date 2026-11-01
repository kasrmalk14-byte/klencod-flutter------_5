
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#080402">
<title>AL-KASER JOKES</title>
<style>
*{box-sizing:border-box}
body{margin:0;background:#080604;color:white;font-family:Tahoma,Arial;overflow-x:hidden}
header{
 min-height:440px;text-align:center;position:relative;overflow:hidden;
 display:flex;flex-direction:column;justify-content:center;align-items:center;
 background:radial-gradient(ellipse at center,#702400,#260b00 48%,#050303 100%);
 border-bottom:3px solid #ff6500;padding:25px 10px
}
#fire{position:absolute;inset:0;width:100%;height:100%;pointer-events:none}
.lion{font-size:125px;z-index:2;filter:drop-shadow(0 0 18px #ff4a00) drop-shadow(0 0 35px #ff8a00);animation:roar 1.7s infinite alternate}
@keyframes roar{from{transform:scale(1) rotate(-2deg)}to{transform:scale(1.12) rotate(2deg)}}
.king{font-size:clamp(30px,8vw,47px);font-weight:1000;color:#ffbf35;text-shadow:0 0 10px #ff5500,0 0 25px red,0 0 45px #ff7600;z-index:2}
.english{font-size:25px;font-weight:900;color:#fff;text-shadow:0 0 15px #ff5400;z-index:2;margin-top:12px}
.slogan{z-index:2;color:#ffd08a;font-weight:bold;margin:15px}
.fireline{width:80%;height:4px;background:linear-gradient(90deg,transparent,#ff3700,#ffe15b,#ff3700,transparent);box-shadow:0 0 20px #ff5200;margin:15px}
.container{max-width:650px;margin:auto;padding:17px}
.stats{display:grid;grid-template-columns:repeat(3,1fr);gap:9px;margin:15px 0}
.stat{background:#1b1510;border:1px solid #78360e;border-radius:14px;padding:14px 5px;text-align:center}
.stat strong{display:block;color:#ffb72e;font-size:23px}
.stat small{color:#aaa}
.search{width:100%;padding:15px;border:1px solid #873b0a;border-radius:13px;background:#1b1510;color:white;font-size:15px;margin-bottom:14px}
.categories{display:flex;gap:8px;overflow-x:auto;padding:5px 0 15px;scrollbar-width:none}
.cat{white-space:nowrap;border:1px solid #754016;background:#24170e;color:white;border-radius:22px;padding:11px 16px}
.cat.active{background:linear-gradient(120deg,#ffbd30,#ff5100);color:#180800;font-weight:bold}
.joke-card{min-height:270px;background:radial-gradient(#332014,#17100b);border:1px solid #a74a0a;border-radius:22px;padding:25px 18px;text-align:center;display:flex;flex-direction:column;justify-content:center;align-items:center;box-shadow:0 0 25px #ff500025}
.joke-icon{font-size:48px;margin-bottom:12px}
.joke-number{color:#ffbd36;font-size:13px;margin-bottom:15px}
#jokeText{font-size:21px;font-weight:bold;line-height:2}
.joke-category{color:#ffb65c;font-size:13px;margin-top:20px}
.actions{display:grid;grid-template-columns:repeat(2,1fr);gap:10px;margin-top:15px}
button{font-family:inherit;cursor:pointer}
.action{padding:15px;border:1px solid #643411;border-radius:12px;background:#26180e;color:white;font-size:14px}
.primary{background:linear-gradient(120deg,#ffbd30,#ff4b00);color:#180700;font-weight:900;box-shadow:0 0 15px #ff4c0050}
.navigation{display:flex;gap:10px;margin-top:10px}
.navigation button{flex:1}
h3{color:#ffbb37}
.favorite-item{background:#21170f;border:1px solid #69330f;border-radius:12px;padding:14px;margin:8px 0;line-height:1.9}
.favorite-item button{float:left;color:#ff9c24;background:none;border:0}
.empty{text-align:center;color:#999;padding:15px}
footer{text-align:center;color:#aa7545;padding:25px;font-size:12px}
</style>
</head>
<body>

<header>
 <canvas id="fire"></canvas>
 <div class="lion">🦁</div>
 <div class="king">الـكَاسِر للنكت</div>
 <div class="fireline"></div>
 <div class="english">AL-KASER JOKES</div>
 <div class="slogan">🔥 مملكة الضحك.. هنا يبدأ الانفجار! 🔥</div>
 <div class="fireline"></div>
 <div style="z-index:2;color:#ffc13b;font-weight:bold">👑 ملك النكت والضحك 👑</div>
</header>

<main class="container">
 <div class="stats">
  <div class="stat"><strong id="total">1000</strong><small>إجمالي النكت</small></div>
  <div class="stat"><strong id="shown">1</strong><small>النكتة الحالية</small></div>
  <div class="stat"><strong id="favCount">0</strong><small>المفضلة</small></div>
 </div>

 <input class="search" id="search" placeholder="🔍 ابحث عن نكتة...">
 <div class="categories" id="categories"></div>

 <div class="joke-card">
  <div class="joke-icon">🤣</div>
  <div class="joke-number" id="number">النكتة رقم 1</div>
  <div id="jokeText">أهلاً بك في مملكة الكاسر!</div>
  <div class="joke-category" id="jokeCategory">نكت متنوعة</div>
 </div>

 <div class="actions">
  <button class="action primary" onclick="nextJoke()">😂 نكتة جديدة</button>
  <button class="action" onclick="randomJoke()">🎲 نكتة عشوائية</button>
  <button class="action" onclick="toggleFavorite()">❤️ أضف للمفضلة</button>
  <button class="action" onclick="copyJoke()">📋 نسخ النكتة</button>
  <button class="action" onclick="shareJoke()">📤 مشاركة</button>
  <button class="action" onclick="clearSearch()">🔄 عرض الكل</button>
 </div>

 <div class="navigation">
  <button class="action" onclick="previousJoke()">⬅️ السابقة</button>
  <button class="action" onclick="nextJoke()">التالية ➡️</button>
 </div>

 <h3>❤️ نكاتي المفضلة</h3>
 <div id="favoritesList"></div>
</main>

<footer>AL-KASER JOKES © 2026<br>صنع بكل فخر لعشاق الضحك 🔥</footer>

<script>
const source=[
["يمنية 🇾🇪",[
"واحد يمني سألوه ليش تشرب الشاي كثير؟ قال عشان القات ما يزعل!",
"واحد قال لصاحبه اليوم ببدأ حياة جديدة، قاله طيب متى تنتهي القديمة؟",
"واحد راح السوق يسأل عن أرخص شيء، قالوا له الخروج بدون شراء!",
"واحد قال لأبوه أنا ذكي جداً، قال الأب ورثت الذكاء من أمك!",
"واحد يمني دخل مطعم وسأل عندكم أكل مجاني؟ قالوا لا، قال طيب ليش فاتحين؟",
"واحد اشترى ساعة ضد الماء، خاف عليها من الصابون!",
"واحد قال لصاحبه معي خبر سار وخبر سيئ، قال ابدأ بالسار، قال السيئ خلص!",
"واحد سأل صاحبه ليش تضحك وحدك؟ قال تذكرت النكتة!",
"واحد قال أنا ما أتأخر، الوقت هو الذي يستعجل!",
"واحد فتح الثلاجة وقال مساء الخير، يمكن الأكل يطلع من نفسه!"
]],
["الأصدقاء 🤝",[
"صاحبي قال لي أنا معك في الحلوة والمرة، قلت له طيب ادفع الحساب!",
"واحد اتصل بصاحبه قال وينك؟ قال في الطريق، قال أي طريق؟ قال الطريق اللي يوصل!",
"صاحبان اتفقا على الصراحة، الأول قال أنت ثقيل، الثاني قال وأنت ميزان!",
"واحد سأل صاحبه لو وقعت في البحر تنقذني؟ قال أكيد بس أرسل الموقع!",
"صاحبي قال أنا لا أخاف من شيء، قلت له افتح فاتورة الكهرباء!",
"واحد استعار كتاب كيف تصبح غنياً، رجعه وقال ما فيه فلوس!",
"صاحبي قال أنا أقرأ أفكار الناس، قلت له اقرأ أفكارك أول!",
"واحد قال لصاحبه أنت أخي الذي لم تلده أمي، قال أجل من أين طلعت؟",
"صاحبان يلعبان الغميضة، واحد اختبأ والثاني رجع البيت!",
"واحد قال لصاحبه أنت صديق العمر، قال يعني باقي العمر كله معك؟"
]],
["مدرسية 📚",[
"المعلم لماذا الشمس تشرق؟ الطالب لأنها لا تعرف طريق الكهرباء!",
"المعلم أعطني جملة فيها سكر، الطالب شربت الشاي، المعلم أين السكر؟ الطالب ذاب!",
"المعلم ما أسرع شيء في العالم؟ الطالب الإجازة!",
"المعلم لماذا لم تحل الواجب؟ الطالب القلم كان في إجازة!",
"المعلم أين تقع الصين؟ الطالب في الخريطة يا أستاذ!",
"ماذا يحدث إذا وضعت الماء في الفريزر؟ الطالب يصير عنده برد!",
"المعلم اكتب موضوعاً عن الصدق، الطالب لا أعرف الكذب!",
"المعلم ما جمع كلمة سكر؟ الطالب شاي!",
"المعلم لماذا تأخرت؟ الطالب كنت أحلم أني في المدرسة وما قدرت أطلع!",
"المعلم أين واجبك؟ الطالب في الطريق، تأخر بسبب الزحمة!"
]],
["المتزوجون 💍",[
"الزوج هل أنا أول رجل أحببته؟ الزوجة نعم، لكن لماذا تسأل؟ الزوج أتأكد أن ذوقك تحسن!",
"الزوجة هل تحبني؟ الزوج طبعاً، حتى وأنا نائم أحلم أني مرتاح!",
"الزوج أين الغداء؟ الزوجة في المطبخ، الزوج وأين المطبخ؟ الزوجة اسأل قلبك!",
"الزوج ماذا كنت تفعل قبل الزواج؟ الزوجة كنت أعيش في سلام!",
"الزوج أنا صاحب القرار في البيت، الزوجة ممتاز، قرر تغسل الصحون!",
"الزوجة هل تسمعني؟ الزوج نعم، قالت ماذا قلت؟ قال كنت أختبر الصوت!",
"الزوج أريد أن أكون رومانسياً، الزوجة ابدأ بتنظيف البيت!",
"الزوجة أنت لا تفهمني، الزوج وأنا أحاول منذ سنوات!",
"الزوج ما أجمل صوتك، الزوجة حقاً؟ قال نعم عندما يكون هادئاً!",
"الزوجة ماذا تريد هدية؟ الزوج يوم بدون أسئلة!"
]],
["المحششين 🤪",[
"واحد محشش اشترى سريراً دورين، نام في الدور الأول حتى لا يتعب!",
"محشش شاف لوحة ممنوع الوقوف، جلس!",
"واحد محشش حط المنبه في الثلاجة، قال أريد أصحى على البارد!",
"محشش سألوه أين تسكن؟ قال مع أهلي، قالوا أين أهلك؟ قال معي!",
"محشش فتح المظلة داخل البيت، قال أتدرب على المطر!",
"واحد محشش اتصل بنفسه، ولما رد الهاتف قال أخيراً لقيتك!",
"محشش سأل الساعة كم عمرك؟ قالت ما زلت في الوقت!",
"محشش اشترى نظارة شمسية بالليل، قال احتياط!",
"محشش دخل محل أحذية وقال عندكم مقاس للمستقبل؟",
"واحد محشش قال أنا أفكر كثيراً، لكن الأفكار لا ترد!"
]],
["الذكاء والغباء 🧠",[
"واحد قال أنا ذكي جداً، سألوه كيف؟ قال لا أضيع وقتي في إثبات ذلك!",
"واحد سأل الكمبيوتر لماذا أنت بطيء؟ قال تعلمت منك!",
"واحد قال عندي ذاكرة قوية، لكنه نسي أين وضعها!",
"واحد اشترى كتاباً عن التركيز، قرأ العنوان وانشغل!",
"واحد قال أفكر خارج الصندوق، لكنه لم يجد الصندوق!",
"سألوه ما الفرق بين الذكي والعبقري؟ قال العبقري يعرف متى يسكت!",
"واحد حل لغزاً صعباً، ثم اكتشف أنه يقرأه بالمقلوب!",
"واحد قال أتعلم من أخطائي، لذلك أكررها حتى أتقنها!",
"واحد دخل اختبار ذكاء، خرج يسأل عن النتيجة!",
"واحد قال عقلي مثل الكمبيوتر، أحياناً يحتاج إعادة تشغيل!"
]],
["العمل والوظائف 💼",[
"المدير لماذا تأخرت؟ الموظف كنت أفكر في مستقبل الشركة!",
"واحد قدم استقالته، قالوا لماذا؟ قال الراتب لا يكفي حتى لأحلامي!",
"الموظف أحب العمل الجماعي بشرط أن يعمل الجميع وأنا أشجع!",
"المدير هل أنت نشيط؟ الموظف جداً، خصوصاً وقت الخروج!",
"واحد اشتغل حارس نوم، قال وظيفتي أحرس الأحلام!",
"المدير ما طموحك؟ الموظف أن أعمل أقل وأقبض أكثر!",
"موظف سأل المدير هل عندنا ترقية؟ قال نعم، من موظف إلى متقاعد!",
"واحد قال أحب الاجتماعات لأنها المكان الوحيد الذي أستطيع النوم فيه جالساً!",
"المدير أين التقرير؟ الموظف في مرحلة التفكير!",
"واحد قال أعمل تحت الضغط، لكن الضغط لا يشتغل معي!"
]],
["الطعام 🍕",[
"واحد فتح الثلاجة وقال من فيكم جائع؟",
"واحد أكل كثيراً وقال أنا لا آكل، أنا أختبر المطعم!",
"واحد اشترى ميزاناً، ثم خبأه حتى لا يجرح مشاعره!",
"واحد قال للبيتزا أنت نصف قلبي، والنصف الثاني جبن!",
"واحد سأل الطباخ هل الأكل طازج؟ قال نعم، كان يركض قبل قليل!",
"واحد عمل رجيم، حذف كلمة أكل من قاموسه وفتح الثلاجة!",
"واحد طلب وجبة خفيفة، جابوا له طبقاً فارغاً!",
"واحد قال أنا نباتي، آكل كل شيء بجانب النباتات!",
"واحد اشترى كعكة، أكلها قبل أن يصل إلى البيت حتى لا تبرد!",
"واحد قال أحب الطبخ، خصوصاً عندما يطبخ غيري!"
]],
["الواتساب والتقنية 📱",[
"واحد كتب في الحالة مشغول جداً، وجلس ينتظر من يسأله لماذا!",
"واحد أرسل رسالة لنفسه، ثم زعل لأنه تأخر في الرد!",
"واحد اشترى هاتفاً ذكياً، صار الهاتف أذكى منه!",
"واحد شحن جواله 100%، ثم خرج يبحث عن شاحن احتياط!",
"واحد حذف التطبيق حتى يرتاح منه، ثم اشتاق إليه!",
"واحد كتب أنا غير متصل، وهو يراقب من شاهد الحالة!",
"واحد نسي كلمة المرور، فغضب من نفسه وغيّر اسمه!",
"واحد قال الإنترنت عندي سريع، لكن الأخبار تصلني بعد أسبوع!",
"واحد فتح الكاميرا الأمامية، أغلقها احتراماً للمشهد!",
"واحد اشترى هاتفاً جديداً، أول شيء فعله صور الهاتف القديم!"
]],
["قصيرة وسريعة ⚡",[
"أنا لست كسولاً، أنا في وضع توفير الطاقة!",
"الراتب مثل الضيف، يأتي قليلاً ويرحل سريعاً!",
"أحب النوم، لأنه الشيء الوحيد الذي لا يطلب مني كلمة مرور!",
"أنا لا أتأخر، أنا أصل في توقيتي الخاص!",
"العقل يقول اعمل، والوسادة تقول ابقَ!",
"لا أثق بالدرج، دائماً يخفي شيئاً!",
"أكبر إنجاز اليوم أنني تذكرت لماذا دخلت الغرفة!",
"أنا رياضي جداً، أركض وراء الأحلام!",
"أحب الهدوء، خصوصاً عندما يكون الجميع صامتين!",
"الحياة جميلة، لكن فاتورة الكهرباء لها رأي آخر!"
]]
];

const endings=[
"والله هذه تحتاج جلسة ضحك!",
"ومن يومها صار مشهوراً في الحارة!",
"والكل ضحك إلا صاحب الموضوع!",
"ومن بعدها قرر ألا يعيد التجربة!",
"وهذه هي الحكمة التي لم يفهمها أحد!",
"حتى الساعة استغربت من كلامه!",
"والأغرب أن الجميع صدقه!",
"ومن يومها أصبح خبيراً في الموضوع!",
"لكن النهاية كانت أقوى من البداية!",
"والضحكة وصلت إلى آخر الشارع!"
];

let jokes=[];
source.forEach((cat,ci)=>{
 for(let i=0;i<100;i++){
  jokes.push({
   id:ci*100+i,
   category:cat[0],
   text:cat[1][i%10]+" "+endings[Math.floor(i/10)]
  });
 }
});

let filtered=[...jokes],current=0,activeCategory="الكل";
let favorites=JSON.parse(localStorage.getItem("kaser_favs")||"[]");
const $=id=>document.getElementById(id);

function categories(){
 let names=["الكل",...source.map(c=>c[0])];
 $("categories").innerHTML=names.map(n=>
 `<button class="cat ${n===activeCategory?'active':''}" onclick='selectCategory("${n}")'>${n}</button>`
 ).join("");
}
function render(){
 if(!filtered.length){
  $("jokeText").textContent="لم نجد نكتة بهذا الاسم 😂";
  $("number").textContent="لا توجد نتائج";
  $("jokeCategory").textContent="";
  $("shown").textContent="0";
  renderFavorites();return;
 }
 current=Math.max(0,Math.min(current,filtered.length-1));
 let j=filtered[current];
 $("jokeText").textContent=j.text;
 $("number").textContent="النكتة رقم "+(j.id+1);
 $("jokeCategory").textContent=j.category;
 $("shown").textContent=current+1;
 $("total").textContent=jokes.length;
 $("favCount").textContent=favorites.length;
 renderFavorites();
}
function selectCategory(n){
 activeCategory=n;filterJokes();categories();
}
function filterJokes(){
 let q=$("search").value.trim().toLowerCase();
 filtered=jokes.filter(j=>
 (activeCategory==="الكل"||j.category===activeCategory)&&
 j.text.toLowerCase().includes(q));
 current=0;render();
}
$("search").addEventListener("input",filterJokes);
function nextJoke(){if(filtered.length){current=(current+1)%filtered.length;render()}}
function previousJoke(){if(filtered.length){current=(current-1+filtered.length)%filtered.length;render()}}
function randomJoke(){if(filtered.length){current=Math.floor(Math.random()*filtered.length);render()}}
function clearSearch(){
 $("search").value="";activeCategory="الكل";filtered=[...jokes];current=0;categories();render();
}
function toggleFavorite(){
 if(!filtered.length)return;
 let id=filtered[current].id;
 favorites=favorites.includes(id)?favorites.filter(x=>x!==id):[...favorites,id];
 localStorage.setItem("kaser_favs",JSON.stringify(favorites));render();
}
function renderFavorites(){
 let saved=jokes.filter(j=>favorites.includes(j.id));
 $("favoritesList").innerHTML=saved.length?saved.map(j=>
 `<div class="favorite-item">${j.text}
 <button onclick="removeFavorite(${j.id})">✖</button></div>`
 ).join(""):'<div class="empty">لم تضف نكتاً للمفضلة بعد ❤️</div>';
}
function removeFavorite(id){
 favorites=favorites.filter(x=>x!==id);
 localStorage.setItem("kaser_favs",JSON.stringify(favorites));render();
}
function copyJoke(){
 if(!filtered.length)return;
 let t=filtered[current].text;
 if(navigator.clipboard&&navigator.clipboard.writeText){
  navigator.clipboard.writeText(t).then(()=>alert("تم نسخ النكتة 😂")).catch(()=>alert(t));
 }else{alert(t)}
}
function shareJoke(){
 if(!filtered.length)return;
 let text=filtered[current].text+"\nAL-KASER JOKES 😂";
 if(navigator.share)navigator.share({title:"الكاسر للنكت",text}).catch(()=>{});
 else copyJoke();
}

/* نار متحركة */
const canvas=$("fire"),ctx=canvas.getContext("2d");
let particles=[];
function resize(){
 canvas.width=canvas.clientWidth*devicePixelRatio;
 canvas.height=canvas.clientHeight*devicePixelRatio;
 ctx.setTransform(devicePixelRatio,0,0,devicePixelRatio,0,0);
}
function makeParticle(){
 return {
  x:Math.random()*canvas.clientWidth,
  y:canvas.clientHeight+10,
  size:Math.random()*4+1,
  speed:Math.random()*2+1,
  drift:(Math.random()-.5)*1.5,
  alpha:Math.random()*.7+.3
 };
}
function animateFire(){
 let w=canvas.clientWidth,h=canvas.clientHeight;
 ctx.clearRect(0,0,w,h);
 if(particles.length<100)particles.push(makeParticle());
 particles.forEach((p,i)=>{
  p.y-=p.speed;p.x+=p.drift;p.alpha-=.002;
  ctx.beginPath();ctx.arc(p.x,p.y,p.size,0,Math.PI*2);
  ctx.fillStyle=`rgba(255,${Math.floor(70+Math.random()*130)},0,${p.alpha})`;
  ctx.shadowBlur=15;ctx.shadowColor="#ff4200";ctx.fill();
  if(p.y<0||p.alpha<=0)particles[i]=makeParticle();
 });
 requestAnimationFrame(animateFire);
}
resize();window.addEventListener("resize",resize);
animateFire();
categories();render();
</script>
</body>
</html>
