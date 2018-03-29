<%@page import="com.suit.util.JsonUtil" %>
<%@page import="com.suit.core.util.SystemUtil" %>
<%@page import="com.suit.shiro.ShiroUser" %>
<%@page import="com.suit.util.JsonUtil" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
         contentType="text/html; charset=UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
    String time = String.valueOf(new Date().getTime());
    String userInfo = JsonUtil.getJSONSerializer(new String[]{""},
            new String[]{"salt", "password", "", "", ""},
            "yyyy-MM-dd HH:mm:ss").serialize(
            request.getAttribute("user"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>dinoedu</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/static/html/dinoedu_web/css/common.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/static/html/dinoedu_web/css/index.css">
    <script type="text/javascript" src="<%=basePath%>/static/html/dinoedu_web/js/jquery.min.js"></script>
    <script type="text/javascript">
        var _ctxPath = "<%=basePath%>";
        var userInfo = JSON.parse('<%=userInfo%>');

        $(document).ready(function () {
            $(document).bind("keypress", function (event) {
                if (event.keyCode == 8) {
                    if (event.target.tagName.toLowerCase() == "body") {
                        return false;
                    }
                }
            });
        });
    </script>
</head>
<body>
<div id='main'>
    <nav>
        <div class="width_control" style="padding:0 20px;">
            <img style="width: 70px" class="logo" src="<%=basePath%>/static/html/dinoedu_web/images/image004.png"
                 onclick="location.href=''"/>
        </div>
    </nav>
    <section class="head font-color-white">
        <div class="width_control container">
            <img class="logo" src="<%=basePath%>/static/html/dinoedu_web/images/image004.png"
                 onclick="location.href=''"/>
            <h2 class="header_text">The professional essay writing service for students who can't even</h2>
            <p class="h1 header_text_p2" style="">Get your essay written starting at just $18.00 a page</p>
            <div class="button_field">
                <div class="gray_button arrow-orange" style="padding:0">
                    <select name="type" class="gray_button" style="margin:0;" value="">
                        <option value="2">Admission Essay</option>
                        <option value="3">Annotated Bibliography</option>
                        <option value="4">Argumentative Essay</option>
                        <option value="18">Article (Any Type)</option>
                        <option value="5">Article Review</option>
                        <option value="28">Assignment</option>
                        <option value="6">Book/Movie Review</option>
                        <option value="7">Business Plan</option>
                        <option value="21">Capstone Project</option>
                        <option value="8">Case Study</option>
                        <option value="19">Content (Any Type)</option>
                        <option value="9">Coursework</option>
                        <option value="10">Creative Writing</option>
                        <option value="11">Critical Thinking</option>
                        <option value="22">Dissertation</option>
                        <option value="29">Dissertation chapter</option>
                        <option value="1" selected="selected">Essay (Any Type)</option>
                        <option value="23">Lab Report</option>
                        <option value="25">Math Problem</option>
                        <option value="12">Presentation or Speech</option>
                        <option value="20">Q&amp;A</option>
                        <option value="13">Research Paper</option>
                        <option value="14">Research Proposal</option>
                        <option value="27">Research Summary</option>
                        <option value="24">Scholarship Essay</option>
                        <option value="30">Speech</option>
                        <option value="26">Statistic Project</option>
                        <option value="15">Term Paper</option>
                        <option value="16">Thesis</option>
                        <option value="17">Other</option>
                    </select>
                </div>


                <input name="email" class="gray_button" placeholder="Enter email to signup"/>
                <div class="send_order orange_button">
                    WRITE MY ESSAY
                </div>
            </div>
            <img src="" class="cartoon_role"/>
        </div>
    </section>

    <section class="writer banner font-color-blue">
        <div class="width_control container">
            <h3 class="text-center">DinoEdu Writers</h3>
        </div>
    </section>

    <section class="how_works font-color-white">
        <div class="width_control container" style="max-width: 1360px;">
            <h3 class="text-center">How it works</h3>
            <div class="step_field">
                <div class="step_left">
                    <div class="step_item">
                        <div class="description">
                            <span class="circle">
                                 <img src="<%=basePath%>/static/html/dinoedu_web/images/1.svg"/>
                            </span>
                            <div>
                                <span>1.</span>
                                <p>Tell us about your essay: Instructions, requirements and deadline.</p>
                            </div>
                        </div>
                        <img src="<%=basePath%>/static/html/dinoedu_web/images/next.png"/>
                    </div>
                    <div class="step_item">
                        <div class="description">
                            <span class="circle">
                                 <img src="<%=basePath%>/static/html/dinoedu_web/images/2.svg"/>
                            </span>
                            <div>
                                <span>2.</span>
                                <p>Chat with professional writers out of 200+ and pick the best one for you.</p>
                            </div>
                        </div>
                        <img src="<%=basePath%>/static/html/dinoedu_web/images/next.png"/>
                    </div>
                </div>
                <div class="step_right">
                    <div class="step_item">
                        <div class="description">
                            <span class="circle">
                                 <img src="<%=basePath%>/static/html/dinoedu_web/images/3.svg"/>
                            </span>
                            <div>
                                <span>3.</span>
                                <p>Make a deposit and your writer will start working on your paper.<br/>&nbsp;</p>
                            </div>
                        </div>
                        <img src="<%=basePath%>/static/html/dinoedu_web/images/next.png"/>
                    </div>
                    <div class="step_item">
                        <div class="description">
                            <span class="circle">
                                 <img src="<%=basePath%>/static/html/dinoedu_web/images/4.svg"/>
                            </span>
                            <div>
                                <span>4.</span>
                                <p>Release money to the writer ONLY if you’re satisfied with the outcome</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="font-color-blue include">
        <div class="width_control container" style="max-width: 1360px;padding-top:60px">
            <h3 class="text-center" style="font-weight: bold">What’s Included?</h3>
            <div class="lines"></div>
            <p style="max-width: 540px;padding:0 20px;margin:30px auto" class="normal_text text-center">Check out our
                essay writing service features. We guarantee that your custom essay will not only be delivered on time
                but will also be of the highest quality.</p>
            <div class="step_field" style="padding:0">
                <div class="step_left">
                    <div class="step_item">
                        <img src="<%=basePath%>/static/html/dinoedu_web/images/f5.png"/>
                        <p class="bold">Customer Satisfaction Guaranteed</p>
                        <p class="normal_text">Only pay after getting the perfect paper. No revision limits.</p>
                    </div>
                    <div class="step_item">
                        <img src="<%=basePath%>/static/html/dinoedu_web/images/f6.png"/>
                        <p class="bold">Get Quick Results</p>
                        <p class="normal_text">We have over 200 dedicated essay writers who will happily write your
                            essay even with 3 hrs. deadline.</p>
                    </div>
                </div>
                <div class="step_right">
                    <div class="step_item">
                        <img src="<%=basePath%>/static/html/dinoedu_web/images/f7.png"/>
                        <p class="bold">Unlimited Support 24/7</p>
                        <p class="normal_text">We can proudly say that our response time to a customer request is less
                            than a minute.</p>
                    </div>
                    <div class="step_item">
                        <img src="<%=basePath%>/static/html/dinoedu_web/images/f8.png"/>
                        <p class="bold">All papers double-checked</p>
                        <p class="normal_text">First we check the web. Secondly, we check our own database of completed
                            orders so you know you’ll have original work every time.</p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="play_order font-color-white">
        <div class="width_control container text-center" style="max-width: 1360px;padding-bottom:300px;">
            <h2 class="text-center">Place Your Order Now!</h2>
            <div class="lines_white"></div>
            <p class="text-center" style="line-height: 22px;">No matter what type of essay you need, we’ll get it
                written, so let’s get started.</p>
            <div class="submit_panel">
                <select style="margin-right:20px;" name="type" class="gray_button" value="">
                    <option value="2">Admission Essay</option>
                    <option value="3">Annotated Bibliography</option>
                    <option value="4">Argumentative Essay</option>
                    <option value="18">Article (Any Type)</option>
                    <option value="5">Article Review</option>
                    <option value="28">Assignment</option>
                    <option value="6">Book/Movie Review</option>
                    <option value="7">Business Plan</option>
                    <option value="21">Capstone Project</option>
                    <option value="8">Case Study</option>
                    <option value="19">Content (Any Type)</option>
                    <option value="9">Coursework</option>
                    <option value="10">Creative Writing</option>
                    <option value="11">Critical Thinking</option>
                    <option value="22">Dissertation</option>
                    <option value="29">Dissertation chapter</option>
                    <option value="1" selected="selected">Essay (Any Type)</option>
                    <option value="23">Lab Report</option>
                    <option value="25">Math Problem</option>
                    <option value="12">Presentation or Speech</option>
                    <option value="20">Q&amp;A</option>
                    <option value="13">Research Paper</option>
                    <option value="14">Research Proposal</option>
                    <option value="27">Research Summary</option>
                    <option value="24">Scholarship Essay</option>
                    <option value="30">Speech</option>
                    <option value="26">Statistic Project</option>
                    <option value="15">Term Paper</option>
                    <option value="16">Thesis</option>
                    <option value="17">Other</option>
                </select>

                <input style="margin-right:20px;" name="email" class="gray_button" placeholder="Enter email to signup"/>
                <div class="orange_button send_order">
                    SEND
                </div>
            </div>
        </div>
    </section>

    <section class="font-color-blue" style="padding:10px 0 20px 0">
        <div class="width_control container text-center" style="max-width: 1360px;padding-bottom:20px;">
            <h2 class="text-center" style="font-weight: 400;font-size: 32px;line-height:48px">We Handle All Writing
                Assignments<br/>For Any Type Of Paper, <span class="bold" style="font-size:34px ">Including:</span></h2>
            <div>
                <div class="types">
                    <ul class="types_list">
                        <li class="type_list_item">Essay (Any Type)</li>
                        <li class="type_list_item">Assignment</li>
                        <li class="type_list_item">Research Paper</li>
                        <li class="type_list_item">Argumentative Essay</li>
                        <li class="type_list_item">Book/Movie Review</li>
                    </ul>
                    <ul class="types_list">
                        <li class="type_list_item">Critical Thinking</li>
                        <li class="type_list_item">Admission Essay</li>
                        <li class="type_list_item">Article Review</li>
                        <li class="type_list_item">Case Study</li>
                        <li class="type_list_item">Coursework</li>
                    </ul>
                    <ul class="types_list">
                        <li class="type_list_item">Term Paper</li>
                        <li class="type_list_item">Research Proposal</li>
                        <li class="type_list_item">Presentation or Speech</li>
                        <li class="type_list_item">Q&amp;A</li>
                        <li class="type_list_item">Other</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="section-v2 section-v2_get-started no-hr flex-order-2 font-color-white" style="padding-bottom:30px;">
        <div class="width_control">
            <div class="section-v2__heading">
                <h2 class="section-v2__title">If you're feeling:</h2>
            </div>
            <div class="section-v2__content">
                <div class="get-started">
                    <div class="get-started__row">
                        <div class="get-started__item">Overwhelmed with tons of routine tasks and educational
                            assignments?
                        </div>
                        <div class="get-started__item">Worried about making sure the work is 100% plagiarism free?</div>
                    </div>
                    <div class="get-started__row">
                        <div class="get-started__item">Stuck with a lot of homework assignments and test preps to be
                            done this week?
                        </div>
                        <div class="get-started__item">Afraid that your academic inquiry will be ignored or missed
                            within a tight deadline?
                        </div>
                    </div>
                    <div class="get-started__row">
                        <div class="get-started__item">Stressed about searching for essay-writing services with solid
                            money-back and confidentiality guarantees?
                        </div>
                        <div class="get-started__item">Depressed while trying to increase your school, college or
                            university grade point average and you just can’t get ahead?
                        </div>
                    </div>
                    <div class="get-started__row">
                        <div class="get-started__item">Unsure about where to find high-quality essays done exactly for
                            your particular university, high school or college?
                        </div>
                        <div class="get-started__item">Concerned about ordering papers for reasonable prices, which are
                            not only unique but relevant and free of grammar mistakes?
                        </div>
                    </div>
                    <div class="get-started__text">You no longer need to worry about any of these issues if you ask for
                        a helping hand from our professionals.
                    </div>

                    <div class="orange_button get_order" style="padding-left:50px;padding-right:50px;">LET'S GET
                        STARTED
                    </div>

                </div>
            </div>
        </div>
    </section>

    <footer class="font-color-white">
        <div class="width_control">
            <div class="footer_info">
                <div class="footer_left">
                    <h4 class="">THE SERVICE WILL BE USEFUL FOR:</h4>
                    <p>接待来访时间发了聚少离多接待来访时间发了聚少离多接待来访时间发了聚少离多接待来访时间发了聚少离多接待来访时间发了聚少离多接待来访时间发了聚少离多</p>
                </div>
                <div class="footer_right">
                    <h4 class="">WE ACCEPT:</h4>
                    <div class="link_field">

                    </div>
                </div>
            </div>

        </div>
        <div class="copyright">
            <div class="width_control" style="padding: 0 30px;">
                <p>
                    2018 © DinoEdu.com. All rights reserved<br/>
                    Privacy Policy / Terms of Use
                </p>
            </div>
        </div>
    </footer>
</div>
<script type="text/javascript" src="<%=basePath%>/static/scripts/common/doT.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/scripts/common/utils.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/scripts/common/common.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/scripts/Index.js"></script>
<script type="text/javascript">
    (function () {
        var scrollTop = 0;
        $(window).on("scroll", function (e) {
            scrollTop = $(window).scrollTop();
            if (scrollTop > 50) {
                $("nav").addClass("show");
            } else {
                $("nav").removeClass("show");
            }
        });

        $(".send_order").on("click", function () {
            var data = utils.getFormData($(this).parent());
            location.href = _ctxPath + "/order?" + utils.parseUrlParams(data);
        });
    })();
</script>
</body>
</html>