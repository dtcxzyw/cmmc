(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[405],{5557:function(t,e,n){(window.__NEXT_P=window.__NEXT_P||[]).push(["/",function(){return n(6616)}])},6408:function(t,e,n){"use strict";n.d(e,{Z:function(){return c}});var s=n(5893),u=n(7294),a=n(4184),r=n.n(a);function c(t){let{data:e,selected:n,onSelect:a,className:c}=t,[i,o]=(0,u.useState)(!1),[l,w]=(0,u.useState)(n),[d,f]=(0,u.useState)(!1),m=t=>{a(t),w(t),f(!1)},h=t=>{w(t),f(!0)},p=()=>{o(!0),d||w("")},_=()=>{o(!1),d||w(n)},v=e.filter(t=>t.includes(l)).map(t=>(0,s.jsx)("div",{className:r()("tw-p-2 tw-px-4 hover:tw-bg-blue-50",{"tw-bg-blue-100":t===n}),onMouseDown:()=>m(t),children:t},t));return(0,s.jsxs)("div",{className:r()("tw-relative",c),children:[(0,s.jsx)("div",{className:"tw-border tw-rounded",children:(0,s.jsx)("input",{className:"tw-w-full tw-p-2 tw-px-3 tw-appearance-none tw-outline-none tw-text-grey-800",value:l,onChange:t=>h(t.target.value),onFocus:()=>p(),onBlur:()=>_()})}),(0,s.jsx)("div",{className:r()("tw-invisible tw-absolute tw-top-100 tw-shadow tw-bg-white tw-rounded tw-overflow-y-auto tw-w-full tw-max-h-96 tw-mt-2",{"!tw-visible":i}),children:v})]})}},2473:function(t,e,n){"use strict";n.d(e,{C7:function(){return l},Dw:function(){return w},El:function(){return i},LE:function(){return o}});var s=n(7294),u=n(3015),a=n(1752),r=n.n(a);let{publicRuntimeConfig:c}=r()();function i(t,e){let[n,a]=(0,s.useState)(e||{});return(0,s.useEffect)(()=>{u.AVB(c.basePath+t).then(t=>a(t))},[t]),n}function o(t,e){return i("/".concat(t,"/data/").concat(e,"_perf.json"),{arm:{},arm_gcc:[{}]})}function l(){let t=i("/commits.json",{}),e=(0,s.useMemo)(()=>{if(void 0===t.head)return[];let e=[],n=t.head;for(;(n in t.data);)e.push(n),n=t.data[n].parent;return e.reverse()},[t]);return e}function w(t){return i("/".concat(t,"/summary.json"),{current:{},current_commit:"",previous:{},previous_commit:"",gcc:{}})}},6616:function(t,e,n){"use strict";n.r(e),n.d(e,{default:function(){return l}});var s=n(5893),u=n(7294),a=n(5152),r=n.n(a),c=n(2473),i=n(6408);let o=r()(n.e(457).then(n.bind(n,1457)),{loadableGenerated:{webpack:()=>[1457]},ssr:!1});function l(){let t=(0,c.El)("/test_list.json",[]),[e,n]=(0,u.useState)("00_bitset1"),[a,r]=(0,u.useState)("sysy_time");return(0,s.jsxs)("main",{className:"tw-container tw-mx-auto tw-p-4 tw-h-5/6",children:[(0,s.jsxs)("div",{className:"tw-flex tw-space-x-2 tw-justify-center",children:[(0,s.jsx)(i.Z,{data:t,selected:e,onSelect:n,className:"tw-w-80"}),(0,s.jsx)(i.Z,{data:["branch-load-misses:u","branch-loads:u","cycles:u","iTLB-load-misses:u","inst_retired:u","inst_spec:u","instructions:u","sysy_time","task-clock:u"],selected:a,onSelect:r,className:"tw-w-80"})]}),(0,s.jsx)(o,{testname:e,event:a,className:"tw-mx-auto"})]})}}},function(t){t.O(0,[635,774,888,179],function(){return t(t.s=5557)}),_N_E=t.O()}]);