"use strict";(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[135],{1135:function(e,t,r){r.r(t),r.d(t,{default:function(){return c}});var s=r(5893),n=r(7294),a=r(3055),l=r(4089);function c(e){let{testname:t,event:r,width:c=1080,height:i=640,className:u}=e,f=(0,l.LE)(t),o=(0,l.C7)(),d=(0,n.useMemo)(()=>o.map(e=>f.arm[e]).map(e=>e?e[r]:void 0).map(e=>e),[f,o,r]),m=(0,n.useRef)(null),h=(0,n.useRef)(null),x=a.tiA().domain(o).range([80,c-20]).paddingInner(1),g=a.BYU().domain(a.Wem(d)).range([i-60,20]).nice();(0,n.useEffect)(()=>{let e=a.LLu(x).ticks(10).tickFormat(e=>e.substring(0,7)).tickSizeOuter(0);a.Ys(m.current).call(e).style("font-family","monospace").selectAll("text").style("text-anchor","start").attr("dy","0").attr("dx","5").attr("transform","rotate(90 -0 5.7)")},[m,x]),(0,n.useEffect)(()=>{let e=a.y4O(g).tickSizeOuter(0);a.Ys(h.current).call(e)},[h,g]);let p=a.UID(d,(e,t)=>t),k=e=>!isNaN(d[e]),j=a.jvg().defined(e=>k(e)).x(e=>x(o[e])).y(e=>g(d[e]));return(0,s.jsxs)("svg",{width:c,height:i,className:u,children:[(0,s.jsx)("g",{ref:m,transform:"translate(0, ".concat(i-60,")")}),(0,s.jsx)("g",{ref:h,transform:"translate(".concat(80,", 0)")}),(0,s.jsx)("g",{style:{strokeWidth:1},children:(0,s.jsx)("path",{d:j(p.filter(k)),stroke:"steelblue",fill:"none"})}),(0,s.jsx)("g",{children:p.filter(k).map(e=>[x(o[e]),g(d[e])]).map(e=>{let[t,r]=e;return(0,s.jsx)("circle",{cx:t,cy:r,r:1.5},t+","+r)})})]})}}}]);