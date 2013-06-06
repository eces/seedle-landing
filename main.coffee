###
  Author: Jinhyuk Lee
###

jQuery ->
  detail = $('button[data-toggle=detail]')
  if detail.length
    detail.click (e) ->
      $('#popup').animate {
        marginTop: '-350px'
      }
        # top: '0px'
      # $('footer').css {
      #   position: 'static'
      # }
      $('#detail-body').slideDown()
  
  shuffle = (a) ->
    i = a.length
    while --i > 0
        j = ~~(Math.random() * (i + 1))
        t = a[j]
        a[j] = a[i]
        a[i] = t
    a

  list = [
    "http://image.bugsm.co.kr/album/images/100/2302/230298.jpg"
    "http://image.bugsm.co.kr/album/images/100/3550/355094.jpg"
    "http://image.bugsm.co.kr/album/images/100/3522/352297.jpg"
    "http://image.bugsm.co.kr/album/images/100/2921/292172.jpg"
    "http://image.bugsm.co.kr/album/images/100/3517/351710.jpg"
    "http://image.bugsm.co.kr/album/images/100/3481/348127.jpg"
    "http://image.bugsm.co.kr/album/images/100/2131/213161.jpg"
    "http://image.bugsm.co.kr/album/images/100/3651/365108.jpg"
    "http://image.bugsm.co.kr/album/images/100/3714/371484.jpg"
    "http://image.bugsm.co.kr/album/images/100/3706/370682.jpg"
    "http://image.bugsm.co.kr/album/images/100/3672/367290.jpg"
    "http://image.bugsm.co.kr/album/images/100/3630/363092.jpg"
    "http://image.bugsm.co.kr/album/images/100/3558/355866.jpg"
    "http://image.bugsm.co.kr/album/images/100/3596/359682.jpg"
    "http://image.bugsm.co.kr/album/images/100/2425/242533.jpg"
    "http://image.bugsm.co.kr/album/images/100/2069/206986.jpg"
    "http://image.bugsm.co.kr/album/images/100/3705/370570.jpg"
    "http://image.bugsm.co.kr/album/images/100/3704/370409.jpg"
    "http://image.bugsm.co.kr/album/images/100/3703/370305.jpg"
    "http://image.bugsm.co.kr/album/images/100/3711/371136.jpg"
    "http://image.bugsm.co.kr/album/images/100/3685/368555.jpg"
    "http://image.bugsm.co.kr/album/images/100/3080/308092.jpg"
    "http://image.bugsm.co.kr/album/images/100/2729/272934.jpg"
    "http://image.bugsm.co.kr/album/images/100/3291/329167.jpg"
    "http://image.bugsm.co.kr/album/images/100/3694/369434.jpg"
    "http://image.bugsm.co.kr/album/images/100/3572/357271.jpg"
    "http://image.bugsm.co.kr/album/images/100/3461/346123.jpg"
    "http://image.bugsm.co.kr/album/images/100/3367/336700.jpg"
    "http://image.bugsm.co.kr/album/images/100/3258/325861.jpg"
    "http://image.bugsm.co.kr/album/images/100/80320/8032014.jpg"
    "http://image.bugsm.co.kr/album/images/100/1904/190460.jpg"
    "http://image.bugsm.co.kr/album/images/100/2191/219146.jpg"
    "http://image.bugsm.co.kr/album/images/100/3082/308216.jpg"
    "http://image.bugsm.co.kr/album/images/100/3661/366126.jpg"
    "http://image.bugsm.co.kr/album/images/100/3658/365889.jpg"
    "http://image.bugsm.co.kr/album/images/100/3605/360585.jpg"
    "http://image.bugsm.co.kr/album/images/100/3628/362858.jpg"
    "http://image.bugsm.co.kr/album/images/100/3683/368398.jpg"
    "http://image.bugsm.co.kr/album/images/100/102/10278.jpg"
    "http://image.bugsm.co.kr/album/images/100/166/16694.jpg"
    "http://image.bugsm.co.kr/album/images/100/3695/369535.jpg"
    "http://image.bugsm.co.kr/album/images/100/3541/354114.jpg"
    "http://image.bugsm.co.kr/album/images/100/3645/364525.jpg"
    "http://image.bugsm.co.kr/album/images/100/3604/360435.jpg"
    "http://image.bugsm.co.kr/album/images/100/3508/350854.jpg"
    "http://image.bugsm.co.kr/album/images/100/3488/348838.jpg"
    "http://image.bugsm.co.kr/album/images/100/3432/343281.jpg"
    "http://image.bugsm.co.kr/album/images/100/3357/335735.jpg"
    "http://image.bugsm.co.kr/album/images/100/3251/325149.jpg"
    "http://image.bugsm.co.kr/album/images/100/2539/253972.jpg"
    "http://image.bugsm.co.kr/album/images/100/3125/312568.jpg"
    "http://image.bugsm.co.kr/album/images/100/2951/295181.jpg"
    "http://image.bugsm.co.kr/album/images/100/2749/274991.jpg"
    "http://image.bugsm.co.kr/album/images/100/3161/316183.jpg"
    "http://image.bugsm.co.kr/album/images/100/2263/226380.jpg"
    "http://image.bugsm.co.kr/album/images/100/1873/187325.jpg"
    "http://image.bugsm.co.kr/album/images/100/2995/299584.jpg"
    "http://image.bugsm.co.kr/album/images/100/2188/218831.jpg"
    "http://image.bugsm.co.kr/album/images/100/3220/322011.jpg"
    "http://image.bugsm.co.kr/album/images/100/3368/336871.jpg"
    "http://image.bugsm.co.kr/album/images/100/3656/365694.jpg"
    "http://image.bugsm.co.kr/album/images/100/3218/321862.jpg"
    "http://image.bugsm.co.kr/album/images/100/2901/290107.jpg"
    "http://image.bugsm.co.kr/album/images/100/2745/274552.jpg"
    "http://image.bugsm.co.kr/album/images/100/1964/196425.jpg"
    "http://image.bugsm.co.kr/album/images/100/3396/339646.jpg"
    "http://image.bugsm.co.kr/album/images/100/3630/363094.jpg"
    "http://image.bugsm.co.kr/album/images/100/2632/263269.jpg"
    "http://image.bugsm.co.kr/album/images/100/2324/232449.jpg"
    "http://image.bugsm.co.kr/album/images/100/2793/279351.jpg"
    "http://image.bugsm.co.kr/album/images/100/3678/367873.jpg"
    "http://image.bugsm.co.kr/album/images/100/2153/215340.jpg"
    "http://image.bugsm.co.kr/album/images/100/2723/272349.jpg"
    "http://image.bugsm.co.kr/album/images/100/3643/364323.jpg"
    "http://image.bugsm.co.kr/album/images/100/2407/240709.jpg"
    "http://image.bugsm.co.kr/album/images/100/3458/345827.jpg"
    "http://image.bugsm.co.kr/album/images/100/2723/272329.jpg"
    "http://image.bugsm.co.kr/album/images/108/3256/325695.jpg"
    "http://image.bugsm.co.kr/album/images/108/2344/234410.jpg"
    "http://image.bugsm.co.kr/album/images/108/2757/275770.jpg"
  ]
  covers = $('#covers')
  if covers.length
    bucket = shuffle list
    images = new Array()
    for url in bucket
      $e = $("""
<img src="#{url}" />
""")
      covers.append $e
      images.push $e

    bucket = shuffle images
    count = bucket.length
    i = 0
    window._handle = 0
    show = () ->
      if i >= count-1
        clearInterval(window._handle)
        window._handle = 0
        return false
      bucket[i++].css {opacity: 1.0}
      bucket[i++].css {opacity: 1.0}
    window._handle = setInterval show, 100

  form = $('form')
  email = form.children 'input[name=email]'
  title = form.children 'input[name=title]'
  submit = form.children 'button'

  form.submit (e) ->
    # artist = false
    # if confirm('아티스트이신가요? ')
    #   artist = true 

    e.preventDefault()

    mintpresso.set {
      type: 'visitor'
      identifier: email.val() || 'nobody@trinity.so'
      title: title.val() || ''
    }, (data) ->
      alert '감사합니다 :)\n\n베타테스트 기간동안 이메일로 가입 링크를 보내드리겠습니다.'
      email.val ''
      title.val ''
    return false

  title[0].focus()
  true

