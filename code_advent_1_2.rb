# consider the digit halfway around the circular list. That is, if your list contains 10 items, only include a digit in your sum if the digit 10/2 = 5 steps forward matches it. Fortunately, your list has an even number of elements.

# For example:

# 1212 produces 6: the list contains 4 items, and all four digits match the digit 2 items ahead.
# 1221 produces 0, because every comparison is between a 1 and a 2.
# 123425 produces 4, because both 2s match each other, but no other digit has a match.
# 123123 produces 12.
# 12131415 produces 4.

# This might be cheating, but I copied the original number sequence and then pasted it to the end of itself, making the sequence twice as long, but allowing for me to cycle through the entire array without hitting a nil value
sequence = 52288333363558485499154593667379825983129595838174556215459767847924894681983659982327227348766123323523761928135529498142759475757743395298119766443615177955869983192422416148136227342557975695715776992385926672874281663982215728858694164196826877597439784345718212671465143383946245256483387399294799123681726698855773197183892781687668444879487616974387225568578824332243937231312988762526266435172368839991156656569355216757728665161858993171324947167236154934763971156276878876651947817463773414689959545545182529168592273976938852543296288123556124875944455223958535517345674988383822486161379696379713696154435999735883263887928939699248553164379523134925516715457142627847383435171665441971945471735151559272441754472964742821541149511816483178758275258144537588461945488727899433722819529952227791738124441864911154264761886722532497444789468633179151368321991328689178912435911957193547211291162291646882568536283392339196714687819131674156242141527938645853329444684288491718768734336215242422894881356753135444982454986374241391537829257237452497287438854938777926485766731968899495683172341258633691879537886118413883539998755191728963295243465272652317678688396966933282733817727267829491661129329543569237574851393672986999229849259777249729442779916868232192959397343138748348617961795916591747264323575331138962127815666591549394198667974883474485517194816325722316324635755915996963882233442192283251342332385388542894377563318488872424233875422146911572267251796836389674156786976251381776334447651262238854783489513326343982916121348528586839424661783299226558222254265343591916961776331679628398479858266769554174266171262882553661231691746743484179321582913346467676377643232268427715235985624293999357897882159583673624676524448541239519721183584176296794549786873371376754952957684517196319993986178282876719375849986979594258458831457363238182251293118459972149876634333756896217466656291872525116439693152833162692228357445324313789451376499591584957144729638393972143328152411413277146721418751298955228833336355848549915459366737982598312959583817455621545976784792489468198365998232722734876612332352376192813552949814275947575774339529811976644361517795586998319242241614813622734255797569571577699238592667287428166398221572885869416419682687759743978434571821267146514338394624525648338739929479912368172669885577319718389278168766844487948761697438722556857882433224393723131298876252626643517236883999115665656935521675772866516185899317132494716723615493476397115627687887665194781746377341468995954554518252916859227397693885254329628812355612487594445522395853551734567498838382248616137969637971369615443599973588326388792893969924855316437952313492551671545714262784738343517166544197194547173515155927244175447296474282154114951181648317875827525814453758846194548872789943372281952995222779173812444186491115426476188672253249744478946863317915136832199132868917891243591195719354721129116229164688256853628339233919671468781913167415624214152793864585332944468428849171876873433621524242289488135675313544498245498637424139153782925723745249728743885493877792648576673196889949568317234125863369187953788611841388353999875519172896329524346527265231767868839696693328273381772726782949166112932954356923757485139367298699922984925977724972944277991686823219295939734313874834861796179591659174726432357533113896212781566659154939419866797488347448551719481632572231632463575591599696388223344219228325134233238538854289437756331848887242423387542214691157226725179683638967415678697625138177633444765126223885478348951332634398291612134852858683942466178329922655822225426534359191696177633167962839847985826676955417426617126288255366123169174674348417932158291334646767637764323226842771523598562429399935789788215958367362467652444854123951972118358417629679454978687337137675495295768451719631999398617828287671937584998697959425845883145736323818225129311845997214987663433375689621746665629187252511643969315283316269222835744532431378945137649959158495714472963839397214332815241141327714672141875129895.digits.reverse

temp_array = []
n = 0
sequence[0..(sequence.length/2)].each do |digit|
  if sequence[n] == sequence[n + (sequence.length/4)]
    temp_array.push(digit)
    n+=1
  else
    n+=1
  end
end

temp_array.inject(:+)

if n + (sequence.length/2) > sequence.length