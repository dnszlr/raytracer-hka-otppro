
.\sqrt_opt.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   0:	48 8d 0d 08 0a 00 00 	lea    0xa08(%rip),%rcx        # a0f <_ZStL8__ioinit+0x7>
   7:	e9 00 00 00 00       	jmpq   c <__tcf_0+0xc>
   c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000010 <_Z13random_doublev>:
#include <random>
#include "measure_time.h"
#include "sqrt_opt.h"

double random_double()
{
  10:	56                   	push   %rsi
  11:	53                   	push   %rbx
  12:	48 83 ec 58          	sub    $0x58,%rsp
  16:	c5 f8 29 74 24 40    	vmovaps %xmm6,0x40(%rsp)
  static std::random_device device;
  1c:	0f b6 05 20 00 00 00 	movzbl 0x20(%rip),%eax        # 43 <_Z13random_doublev+0x33>
  23:	84 c0                	test   %al,%al
  25:	75 14                	jne    3b <_Z13random_doublev+0x2b>
  27:	48 8d 0d 20 00 00 00 	lea    0x20(%rip),%rcx        # 4e <_Z13random_doublev+0x3e>
  2e:	e8 00 00 00 00       	callq  33 <_Z13random_doublev+0x23>
  33:	85 c0                	test   %eax,%eax
  35:	0f 85 bb 00 00 00    	jne    f6 <_Z13random_doublev+0xe6>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  3b:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 42 <_Z13random_doublev+0x32>
  42:	84 c0                	test   %al,%al
  44:	74 7b                	je     c1 <_Z13random_doublev+0xb1>
    operator()()
    {
#ifdef _GLIBCXX_USE_RANDOM_TR1
      return this->_M_getval();
#else
      return this->_M_getval_pretr1();
  46:	48 8d 0d 40 00 00 00 	lea    0x40(%rip),%rcx        # 8d <_Z13random_doublev+0x7d>
  4d:	e8 00 00 00 00       	callq  52 <_Z13random_doublev+0x42>
      _RealType __ret;
      _RealType __sum = _RealType(0);
      _RealType __tmp = _RealType(1);
      for (size_t __k = __m; __k != 0; --__k)
	{
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  52:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  56:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  5a:	48 8d 0d 40 00 00 00 	lea    0x40(%rip),%rcx        # a1 <_Z13random_doublev+0x91>
  61:	89 c0                	mov    %eax,%eax
  63:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  68:	c5 fb 58 f3          	vaddsd %xmm3,%xmm0,%xmm6
  6c:	e8 00 00 00 00       	callq  71 <_Z13random_doublev+0x61>
  71:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  75:	89 c0                	mov    %eax,%eax
  77:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  7c:	c4 e2 c9 99 05 30 01 	vfmadd132sd 0x130(%rip),%xmm6,%xmm0        # 1b5 <_ZZ13random_doublevE6device+0x175>
  83:	00 00 
	  __tmp *= __r;
	}
      __ret = __sum / __tmp;
  85:	c5 fb 59 05 38 01 00 	vmulsd 0x138(%rip),%xmm0,%xmm0        # 1c5 <_ZZ13random_doublevE6device+0x185>
  8c:	00 
      if (__builtin_expect(__ret >= _RealType(1), 0))
  8d:	c5 f9 2e 05 40 01 00 	vucomisd 0x140(%rip),%xmm0        # 1d5 <_ZZ13random_doublevE6device+0x195>
  94:	00 
  95:	0f 83 c5 00 00 00    	jae    160 <_Z13random_doublev+0x150>
  9b:	c5 fb 10 15 10 00 00 	vmovsd 0x10(%rip),%xmm2        # b3 <_Z13random_doublev+0xa3>
  a2:	00 
	operator()(_UniformRandomNumberGenerator& __urng,
		   const param_type& __p)
	{
	  __detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
	    __aurng(__urng);
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
  a3:	c5 fb 10 0d 18 00 00 	vmovsd 0x18(%rip),%xmm1        # c3 <_Z13random_doublev+0xb3>
  aa:	00 
  return dist(device);
}
  ab:	c5 f8 28 74 24 40    	vmovaps 0x40(%rsp),%xmm6
  b1:	c5 f3 5c ca          	vsubsd %xmm2,%xmm1,%xmm1
  b5:	c4 e2 e9 99 c1       	vfmadd132sd %xmm1,%xmm2,%xmm0
  ba:	48 83 c4 58          	add    $0x58,%rsp
  be:	5b                   	pop    %rbx
  bf:	5e                   	pop    %rsi
  c0:	c3                   	retq   
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  c1:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c8 <_Z13random_doublev+0xb8>
  c8:	e8 00 00 00 00       	callq  cd <_Z13random_doublev+0xbd>
  cd:	85 c0                	test   %eax,%eax
  cf:	0f 84 71 ff ff ff    	je     46 <_Z13random_doublev+0x36>
	: _M_a(__a), _M_b(__b)
  d5:	c5 f8 28 05 20 01 00 	vmovaps 0x120(%rip),%xmm0        # 1fd <_ZZ13random_doublevE6device+0x1bd>
  dc:	00 
  dd:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # e4 <_Z13random_doublev+0xd4>
  e4:	c5 f8 29 05 10 00 00 	vmovaps %xmm0,0x10(%rip)        # fc <_Z13random_doublev+0xec>
  eb:	00 
  ec:	e8 00 00 00 00       	callq  f1 <_Z13random_doublev+0xe1>
  f1:	e9 50 ff ff ff       	jmpq   46 <_Z13random_doublev+0x36>

      // Use empty-base optimization: http://www.cantrip.org/emptyopt.html
      struct _Alloc_hider : allocator_type // TODO check __is_final
      {
	_Alloc_hider(pointer __dat, const _Alloc& __a = _Alloc())
	: allocator_type(__a), _M_p(__dat) { }
  f6:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
      static char_type*
      copy(char_type* __s1, const char_type* __s2, size_t __n)
      {
	if (__n == 0)
	  return __s1;
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
  fb:	c7 44 24 30 6d 74 31 	movl   $0x3931746d,0x30(%rsp)
 102:	39 
    { _M_init_pretr1(__token); }
 103:	48 8d 0d 40 00 00 00 	lea    0x40(%rip),%rcx        # 14a <_Z13random_doublev+0x13a>
      _M_data(pointer __p)
      { _M_dataplus._M_p = __p; }

      void
      _M_length(size_type __length)
      { _M_string_length = __length; }
 10a:	48 c7 44 24 28 07 00 	movq   $0x7,0x28(%rsp)
 111:	00 00 
	: allocator_type(__a), _M_p(__dat) { }
 113:	48 8d 43 10          	lea    0x10(%rbx),%rax
 117:	66 c7 43 14 39 33    	movw   $0x3339,0x14(%rbx)
 11d:	c6 43 16 37          	movb   $0x37,0x16(%rbx)
 121:	48 89 da             	mov    %rbx,%rdx
 124:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
      { __c1 = __c2; }
 129:	c6 44 24 37 00       	movb   $0x0,0x37(%rsp)
 12e:	e8 00 00 00 00       	callq  133 <_Z13random_doublev+0x123>
  static std::random_device device;
 133:	48 8d 0d 20 00 00 00 	lea    0x20(%rip),%rcx        # 15a <_Z13random_doublev+0x14a>
      _M_create(size_type&, size_type);

      void
      _M_dispose()
      {
	if (!_M_is_local())
 13a:	48 83 c3 10          	add    $0x10,%rbx
 13e:	e8 00 00 00 00       	callq  143 <_Z13random_doublev+0x133>
 143:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
 148:	48 39 d9             	cmp    %rbx,%rcx
 14b:	0f 84 ea fe ff ff    	je     3b <_Z13random_doublev+0x2b>
      }

      // __p is not permitted to be a null pointer.
      void
      deallocate(pointer __p, size_type)
      { ::operator delete(__p); }
 151:	e8 00 00 00 00       	callq  156 <_Z13random_doublev+0x146>
 156:	e9 e0 fe ff ff       	jmpq   3b <_Z13random_doublev+0x2b>
 15b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	{
#if _GLIBCXX_USE_C99_MATH_TR1
	  __ret = std::nextafter(_RealType(1), _RealType(0));
 160:	c5 fb 10 05 40 01 00 	vmovsd 0x140(%rip),%xmm0        # 2a8 <_ZZ13random_doublevE6device+0x268>
 167:	00 
 168:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
 16c:	e8 00 00 00 00       	callq  171 <_Z13random_doublev+0x161>
 171:	e9 25 ff ff ff       	jmpq   9b <_Z13random_doublev+0x8b>
 176:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
 17b:	48 83 c3 10          	add    $0x10,%rbx
 17f:	48 89 c6             	mov    %rax,%rsi
 182:	48 39 d9             	cmp    %rbx,%rcx
 185:	74 1c                	je     1a3 <_Z13random_doublev+0x193>
 187:	c5 f8 77             	vzeroupper 
 18a:	e8 00 00 00 00       	callq  18f <_Z13random_doublev+0x17f>
 18f:	48 8d 0d 20 00 00 00 	lea    0x20(%rip),%rcx        # 1b6 <_ZZ13random_doublevE6device+0x176>
 196:	e8 00 00 00 00       	callq  19b <_Z13random_doublev+0x18b>
 19b:	48 89 f1             	mov    %rsi,%rcx
 19e:	e8 00 00 00 00       	callq  1a3 <_Z13random_doublev+0x193>
 1a3:	c5 f8 77             	vzeroupper 
 1a6:	eb e7                	jmp    18f <_Z13random_doublev+0x17f>
 1a8:	90                   	nop
 1a9:	90                   	nop
 1aa:	90                   	nop
 1ab:	90                   	nop
 1ac:	90                   	nop
 1ad:	90                   	nop
 1ae:	90                   	nop
 1af:	90                   	nop

Disassembly of section .text$_ZNKSt5ctypeIcE8do_widenEc:

0000000000000000 <_ZNKSt5ctypeIcE8do_widenEc>:
   0:	89 d0                	mov    %edx,%eax
   2:	c3                   	retq   
   3:	90                   	nop
   4:	90                   	nop
   5:	90                   	nop
   6:	90                   	nop
   7:	90                   	nop
   8:	90                   	nop
   9:	90                   	nop
   a:	90                   	nop
   b:	90                   	nop
   c:	90                   	nop
   d:	90                   	nop
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_Z17measure_sqrt_timeILy2EEvv:

0000000000000000 <_Z17measure_sqrt_timeILy2EEvv>:
       0:	55                   	push   %rbp
       1:	41 57                	push   %r15
       3:	41 56                	push   %r14
       5:	41 55                	push   %r13
       7:	41 54                	push   %r12
       9:	57                   	push   %rdi
       a:	56                   	push   %rsi
       b:	53                   	push   %rbx
       c:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
{
      13:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
      1a:	00 
      1b:	c5 f8 29 75 e0       	vmovaps %xmm6,-0x20(%rbp)
  static std::random_device device;
      20:	c5 f8 29 7d f0       	vmovaps %xmm7,-0x10(%rbp)
      25:	c5 78 29 45 00       	vmovaps %xmm8,0x0(%rbp)
      2a:	c5 78 29 4d 10       	vmovaps %xmm9,0x10(%rbp)
      2f:	c5 78 29 55 20       	vmovaps %xmm10,0x20(%rbp)
      34:	c5 78 29 5d 30       	vmovaps %xmm11,0x30(%rbp)
      39:	c5 78 29 65 40       	vmovaps %xmm12,0x40(%rbp)
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
      3e:	c5 78 29 6d 50       	vmovaps %xmm13,0x50(%rbp)
      43:	c5 78 29 75 60       	vmovaps %xmm14,0x60(%rbp)
      return this->_M_getval_pretr1();
      48:	c5 78 29 7d 70       	vmovaps %xmm15,0x70(%rbp)
      4d:	b8 80 6a 18 00       	mov    $0x186a80,%eax
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
      52:	e8 00 00 00 00       	callq  57 <_Z17measure_sqrt_timeILy2EEvv+0x57>
      57:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 5e <_Z17measure_sqrt_timeILy2EEvv+0x5e>
      5e:	ba 02 00 00 00       	mov    $0x2,%edx
      63:	48 29 c4             	sub    %rax,%rsp
      66:	e8 00 00 00 00       	callq  6b <_Z17measure_sqrt_timeILy2EEvv+0x6b>
      6b:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      71:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 78 <_Z17measure_sqrt_timeILy2EEvv+0x78>
      78:	48 8d bc 24 9f 00 00 	lea    0x9f(%rsp),%rdi
      7f:	00 
      80:	48 89 c6             	mov    %rax,%rsi
      83:	48 89 c1             	mov    %rax,%rcx
      __ret = __sum / __tmp;
      86:	48 83 e7 80          	and    $0xffffffffffffff80,%rdi
      8a:	e8 00 00 00 00       	callq  8f <_Z17measure_sqrt_timeILy2EEvv+0x8f>
      if (__builtin_expect(__ret >= _RealType(1), 0))
      8f:	48 8b 06             	mov    (%rsi),%rax
      92:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      96:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      9d:	00 
      9e:	48 85 db             	test   %rbx,%rbx
      a1:	0f 84 ee 01 00 00    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
      a7:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
}
      ab:	0f 84 fe 0e 00 00    	je     faf <_Z17measure_sqrt_timeILy2EEvv+0xfaf>
      b1:	0f be 53 43          	movsbl 0x43(%rbx),%edx
      b5:	48 89 f1             	mov    %rsi,%rcx
      b8:	e8 00 00 00 00       	callq  bd <_Z17measure_sqrt_timeILy2EEvv+0xbd>
      bd:	48 89 c1             	mov    %rax,%rcx
      c0:	e8 00 00 00 00       	callq  c5 <_Z17measure_sqrt_timeILy2EEvv+0xc5>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
      c5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cc <_Z17measure_sqrt_timeILy2EEvv+0xcc>
      cc:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      d2:	48 8d 15 0c 00 00 00 	lea    0xc(%rip),%rdx        # e5 <_Z17measure_sqrt_timeILy2EEvv+0xe5>
	: _M_a(__a), _M_b(__b)
      d9:	e8 00 00 00 00       	callq  de <_Z17measure_sqrt_timeILy2EEvv+0xde>
      de:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # e5 <_Z17measure_sqrt_timeILy2EEvv+0xe5>
      e5:	ba 40 0d 03 00       	mov    $0x30d40,%edx
      ea:	e8 00 00 00 00       	callq  ef <_Z17measure_sqrt_timeILy2EEvv+0xef>
      ef:	41 b8 11 00 00 00    	mov    $0x11,%r8d
      f5:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # 114 <_Z17measure_sqrt_timeILy2EEvv+0x114>
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
      fc:	48 89 c6             	mov    %rax,%rsi
      ff:	48 89 c1             	mov    %rax,%rcx
     102:	e8 00 00 00 00       	callq  107 <_Z17measure_sqrt_timeILy2EEvv+0x107>
    { _M_init_pretr1(__token); }
     107:	48 8b 06             	mov    (%rsi),%rax
      { _M_string_length = __length; }
     10a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     10e:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     115:	00 
	: allocator_type(__a), _M_p(__dat) { }
     116:	48 85 db             	test   %rbx,%rbx
     119:	0f 84 76 01 00 00    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
     11f:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     123:	0f 84 55 0e 00 00    	je     f7e <_Z17measure_sqrt_timeILy2EEvv+0xf7e>
      { __c1 = __c2; }
     129:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     12d:	48 89 f1             	mov    %rsi,%rcx
     130:	4c 8d af 00 35 0c 00 	lea    0xc3500(%rdi),%r13
  static std::random_device device;
     137:	48 8d 9f 00 6a 18 00 	lea    0x186a00(%rdi),%rbx
     13e:	e8 00 00 00 00       	callq  143 <_Z17measure_sqrt_timeILy2EEvv+0x143>
     143:	4d 89 ee             	mov    %r13,%r14
     146:	48 89 c1             	mov    %rax,%rcx
	if (!_M_is_local())
     149:	e8 00 00 00 00       	callq  14e <_Z17measure_sqrt_timeILy2EEvv+0x14e>
     14e:	66 90                	xchg   %ax,%ax
     150:	e8 10 00 00 00       	callq  165 <_Z17measure_sqrt_timeILy2EEvv+0x165>
     155:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
     159:	49 83 c6 04          	add    $0x4,%r14
     15d:	c5 eb 5a d0          	vcvtsd2ss %xmm0,%xmm2,%xmm2
	  __ret = std::nextafter(_RealType(1), _RealType(0));
     161:	c4 c1 7a 11 56 fc    	vmovss %xmm2,-0x4(%r14)
     167:	49 39 de             	cmp    %rbx,%r14
     16a:	75 e4                	jne    150 <_Z17measure_sqrt_timeILy2EEvv+0x150>
     16c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 173 <_Z17measure_sqrt_timeILy2EEvv+0x173>
     173:	41 b8 09 00 00 00    	mov    $0x9,%r8d
     179:	48 8d 15 2a 00 00 00 	lea    0x2a(%rip),%rdx        # 1aa <_Z17measure_sqrt_timeILy2EEvv+0x1aa>
     180:	e8 00 00 00 00       	callq  185 <_Z17measure_sqrt_timeILy2EEvv+0x185>
     185:	4c 8b 25 00 00 00 00 	mov    0x0(%rip),%r12        # 18c <_Z17measure_sqrt_timeILy2EEvv+0x18c>
     18c:	49 8b 04 24          	mov    (%r12),%rax
     190:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     194:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     19b:	00 
     19c:	48 85 db             	test   %rbx,%rbx
     19f:	0f 84 f0 00 00 00    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
     1a5:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     1a9:	0f 84 31 0e 00 00    	je     fe0 <_Z17measure_sqrt_timeILy2EEvv+0xfe0>
     1af:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     1b3:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1ba <_Z17measure_sqrt_timeILy2EEvv+0x1ba>
     1ba:	e8 00 00 00 00       	callq  1bf <_Z17measure_sqrt_timeILy2EEvv+0x1bf>
     1bf:	48 89 c1             	mov    %rax,%rcx
     1c2:	e8 00 00 00 00       	callq  1c7 <_Z17measure_sqrt_timeILy2EEvv+0x1c7>
     1c7:	e8 00 00 00 00       	callq  1cc <_Z17measure_sqrt_timeILy2EEvv+0x1cc>
     1cc:	c7 45 bc e8 03 00 00 	movl   $0x3e8,-0x44(%rbp)
     1d3:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
     1d7:	49 89 c7             	mov    %rax,%r15
     1da:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     1de:	66 90                	xchg   %ax,%ax
     1e0:	48 89 fe             	mov    %rdi,%rsi
     1e3:	4c 89 eb             	mov    %r13,%rbx
     1e6:	e9 8a 00 00 00       	jmpq   275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
     1eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

template <size_t LOOPS = 2>
void measure_sqrt_time(void) {
     1f0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     1f4:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     1f8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
     1fd:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
     201:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     205:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     209:	c5 fa 11 2e          	vmovss %xmm5,(%rsi)
     20d:	0f 87 61 0d 00 00    	ja     f74 <_Z17measure_sqrt_timeILy2EEvv+0xf74>
     213:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     217:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     21b:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
     220:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
     224:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     228:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     22c:	c5 fa 11 6e 04       	vmovss %xmm5,0x4(%rsi)
     231:	0f 87 33 0d 00 00    	ja     f6a <_Z17measure_sqrt_timeILy2EEvv+0xf6a>
     237:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     23b:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     23f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
     244:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
      operator<<(long long __n)
      { return _M_insert(__n); }

      __ostream_type&
      operator<<(unsigned long long __n)
      { return _M_insert(__n); }
     248:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     24c:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     250:	c5 fa 11 6e 08       	vmovss %xmm5,0x8(%rsi)
     255:	0f 87 05 0d 00 00    	ja     f60 <_Z17measure_sqrt_timeILy2EEvv+0xf60>
    operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
    {
      if (!__s)
	__out.setstate(ios_base::badbit);
      else
	__ostream_insert(__out, __s,
     25b:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     25f:	48 83 c3 10          	add    $0x10,%rbx
     263:	48 83 c6 10          	add    $0x10,%rsi
     267:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     26b:	c5 fa 11 5e fc       	vmovss %xmm3,-0x4(%rsi)
      { return _M_insert(__n); }
     270:	4c 39 f3             	cmp    %r14,%rbx
	__ostream_insert(__out, __s,
     273:	74 2b                	je     2a0 <_Z17measure_sqrt_timeILy2EEvv+0x2a0>
     275:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     279:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
     27d:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
   *  for more on this subject.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    endl(basic_ostream<_CharT, _Traits>& __os)
    { return flush(__os.put(__os.widen('\n'))); }
     281:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
       *  Additional l10n notes are at
       *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
      */
      char_type
      widen(char __c) const
      { return __check_facet(_M_ctype).widen(__c); }
     285:	0f 86 65 ff ff ff    	jbe    1f0 <_Z17measure_sqrt_timeILy2EEvv+0x1f0>
     28b:	e8 00 00 00 00       	callq  290 <_Z17measure_sqrt_timeILy2EEvv+0x290>
      if (!__f)
     290:	e9 5b ff ff ff       	jmpq   1f0 <_Z17measure_sqrt_timeILy2EEvv+0x1f0>
     295:	e8 00 00 00 00       	callq  29a <_Z17measure_sqrt_timeILy2EEvv+0x29a>
       *  @return  The converted character.
      */
      char_type
      widen(char __c) const
      {
	if (_M_widen_ok)
     29a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     2a0:	ff 4d bc             	decl   -0x44(%rbp)
     2a3:	0f 85 37 ff ff ff    	jne    1e0 <_Z17measure_sqrt_timeILy2EEvv+0x1e0>
     2a9:	e8 00 00 00 00       	callq  2ae <_Z17measure_sqrt_timeILy2EEvv+0x2ae>
   *  This manipulator simply calls the stream's @c flush() member function.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    flush(basic_ostream<_CharT, _Traits>& __os)
    { return __os.flush(); }
     2ae:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     2b5:	9b c4 20 
	__ostream_insert(__out, __s,
     2b8:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     2bc:	4c 29 f8             	sub    %r15,%rax
     2bf:	48 89 c1             	mov    %rax,%rcx
     2c2:	48 f7 ea             	imul   %rdx
     2c5:	48 c1 f9 3f          	sar    $0x3f,%rcx
     2c9:	48 c1 fa 07          	sar    $0x7,%rdx
     2cd:	48 29 ca             	sub    %rcx,%rdx
    MeasureTime<std::chrono::nanoseconds> time;
    alignas(128) float floats[N * 4];
    alignas(128) float roots[N * 4];

    std::cout << LOOPS  << " iterations" << std::endl;
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
     2d0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2d7 <_Z17measure_sqrt_timeILy2EEvv+0x2d7>
     2d7:	e8 00 00 00 00       	callq  2dc <_Z17measure_sqrt_timeILy2EEvv+0x2dc>
     2dc:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     2e2:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 31d <_Z17measure_sqrt_timeILy2EEvv+0x31d>
     2e9:	49 89 c6             	mov    %rax,%r14
     2ec:	48 89 c1             	mov    %rax,%rcx
     2ef:	e8 00 00 00 00       	callq  2f4 <_Z17measure_sqrt_timeILy2EEvv+0x2f4>
     2f4:	49 8b 06             	mov    (%r14),%rax
    { return flush(__os.put(__os.widen('\n'))); }
     2f7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     2fb:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
     302:	00 
     303:	48 85 f6             	test   %rsi,%rsi
      if (!__f)
     306:	74 8d                	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
     308:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     30c:	0f 84 25 0e 00 00    	je     1137 <_Z17measure_sqrt_timeILy2EEvv+0x1137>
     312:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     316:	4c 89 f1             	mov    %r14,%rcx
     319:	e8 00 00 00 00       	callq  31e <_Z17measure_sqrt_timeILy2EEvv+0x31e>
     31e:	48 89 c1             	mov    %rax,%rcx
     321:	e8 00 00 00 00       	callq  326 <_Z17measure_sqrt_timeILy2EEvv+0x326>
     326:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 32d <_Z17measure_sqrt_timeILy2EEvv+0x32d>
     32d:	41 b8 37 00 00 00    	mov    $0x37,%r8d
    { return __os.flush(); }
     333:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 37a <_Z17measure_sqrt_timeILy2EEvv+0x37a>
     33a:	e8 00 00 00 00       	callq  33f <_Z17measure_sqrt_timeILy2EEvv+0x33f>
     33f:	49 8b 04 24          	mov    (%r12),%rax
    for (int i = 0; i < 4 * N; i++) {
       floats[i] = random_double();
     343:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     347:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     34e:	00 
     34f:	48 85 f6             	test   %rsi,%rsi
     352:	0f 84 3d ff ff ff    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
    for (int i = 0; i < 4 * N; i++) {
     358:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
	__ostream_insert(__out, __s,
     35c:	0f 84 af 0c 00 00    	je     1011 <_Z17measure_sqrt_timeILy2EEvv+0x1011>
     362:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     366:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 36d <_Z17measure_sqrt_timeILy2EEvv+0x36d>
     36d:	e8 00 00 00 00       	callq  372 <_Z17measure_sqrt_timeILy2EEvv+0x372>
     372:	48 89 c1             	mov    %rax,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
     375:	e8 00 00 00 00       	callq  37a <_Z17measure_sqrt_timeILy2EEvv+0x37a>
     37a:	e8 00 00 00 00       	callq  37f <_Z17measure_sqrt_timeILy2EEvv+0x37f>
     37f:	ba e8 03 00 00       	mov    $0x3e8,%edx
      { return __check_facet(_M_ctype).widen(__c); }
     384:	c5 f8 28 3d 50 01 00 	vmovaps 0x150(%rip),%xmm7        # 4dc <_Z17measure_sqrt_timeILy2EEvv+0x4dc>
     38b:	00 
      if (!__f)
     38c:	c5 f8 28 35 60 01 00 	vmovaps 0x160(%rip),%xmm6        # 4f4 <_Z17measure_sqrt_timeILy2EEvv+0x4f4>
     393:	00 
     394:	48 89 c6             	mov    %rax,%rsi
     397:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     39b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     3a0:	31 c0                	xor    %eax,%eax
     3a2:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
     3a9:	48 83 c0 10          	add    $0x10,%rax
     3ad:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
    { return __os.flush(); }
     3b2:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
     3b6:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
   DURATION time = DURATION(0);
   bool stopped = true;
public:
   void start_clock() {
     if (stopped) {
       start = steady_clock::now();
     3ba:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
     3be:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
     3c2:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
     3c6:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
     3ca:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
     3ce:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
     3d4:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
     3da:	75 c6                	jne    3a2 <_Z17measure_sqrt_timeILy2EEvv+0x3a2>
     3dc:	ff ca                	dec    %edx
     3de:	75 c0                	jne    3a0 <_Z17measure_sqrt_timeILy2EEvv+0x3a0>
    std::cout << "math sqrt" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i += 4) {
        for (int k = 0; k < 4; k++) {
          roots[i + k] = sqrt(floats[i + k]);
     3e0:	e8 00 00 00 00       	callq  3e5 <_Z17measure_sqrt_timeILy2EEvv+0x3e5>
     3e5:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     3ec:	9b c4 20 
     3ef:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     3f3:	48 29 f0             	sub    %rsi,%rax
     3f6:	48 89 c1             	mov    %rax,%rcx
     3f9:	48 f7 ea             	imul   %rdx
     3fc:	48 c1 f9 3f          	sar    $0x3f,%rcx
     400:	48 c1 fa 07          	sar    $0x7,%rdx
     404:	48 29 ca             	sub    %rcx,%rdx
     407:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 40e <_Z17measure_sqrt_timeILy2EEvv+0x40e>
     40e:	e8 00 00 00 00       	callq  413 <_Z17measure_sqrt_timeILy2EEvv+0x413>
     413:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     419:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 454 <_Z17measure_sqrt_timeILy2EEvv+0x454>
     420:	49 89 c6             	mov    %rax,%r14
     423:	48 89 c1             	mov    %rax,%rcx
     426:	e8 00 00 00 00       	callq  42b <_Z17measure_sqrt_timeILy2EEvv+0x42b>
     42b:	49 8b 06             	mov    (%r14),%rax
     42e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     432:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
     439:	00 
     43a:	48 85 f6             	test   %rsi,%rsi
     43d:	0f 84 52 fe ff ff    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
     443:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     447:	0f 84 88 0c 00 00    	je     10d5 <_Z17measure_sqrt_timeILy2EEvv+0x10d5>
     44d:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     451:	4c 89 f1             	mov    %r14,%rcx
     454:	e8 00 00 00 00       	callq  459 <_Z17measure_sqrt_timeILy2EEvv+0x459>
     459:	48 89 c1             	mov    %rax,%rcx
     45c:	e8 00 00 00 00       	callq  461 <_Z17measure_sqrt_timeILy2EEvv+0x461>
      for (int i = 0; i < 4 * N; i += 4) {
     461:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 468 <_Z17measure_sqrt_timeILy2EEvv+0x468>
          roots[i + k] = sqrt(floats[i + k]);
     468:	41 b8 39 00 00 00    	mov    $0x39,%r8d
     46e:	48 8d 15 78 00 00 00 	lea    0x78(%rip),%rdx        # 4ed <_Z17measure_sqrt_timeILy2EEvv+0x4ed>
     475:	e8 00 00 00 00       	callq  47a <_Z17measure_sqrt_timeILy2EEvv+0x47a>
     47a:	49 8b 04 24          	mov    (%r12),%rax
     47e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     482:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     489:	00 
	__throw_bad_cast();
     48a:	48 85 f6             	test   %rsi,%rsi
     48d:	0f 84 02 fe ff ff    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
    for (int j = 0; j < LOOP; j++) {
     493:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     497:	0f 84 a5 0b 00 00    	je     1042 <_Z17measure_sqrt_timeILy2EEvv+0x1042>
     }
   }

   void stop_clock() {
     if (! stopped) {
       end = steady_clock::now();
     49d:	0f be 56 43          	movsbl 0x43(%rsi),%edx
        }
      }    
    }
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     4a1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 4a8 <_Z17measure_sqrt_timeILy2EEvv+0x4a8>
     4a8:	e8 00 00 00 00       	callq  4ad <_Z17measure_sqrt_timeILy2EEvv+0x4ad>
		const duration<_Rep2, _Period2>& __rhs)
      {
	typedef duration<_Rep1, _Period1>			__dur1;
	typedef duration<_Rep2, _Period2>			__dur2;
	typedef typename common_type<__dur1,__dur2>::type	__cd;
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
     4ad:	48 89 c1             	mov    %rax,%rcx
     4b0:	e8 00 00 00 00       	callq  4b5 <_Z17measure_sqrt_timeILy2EEvv+0x4b5>
     4b5:	e8 00 00 00 00       	callq  4ba <_Z17measure_sqrt_timeILy2EEvv+0x4ba>
     4ba:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     4bf:	48 89 c6             	mov    %rax,%rsi
      { return _M_insert(__n); }
     4c2:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     4c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     4cd:	00 00 00 
	__ostream_insert(__out, __s,
     4d0:	48 89 fa             	mov    %rdi,%rdx
     4d3:	4c 89 e8             	mov    %r13,%rax
     4d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     4dd:	00 00 00 
     4e0:	c5 f8 28 20          	vmovaps (%rax),%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
     4e4:	c5 f8 28 40 20       	vmovaps 0x20(%rax),%xmm0
      { return __check_facet(_M_ctype).widen(__c); }
     4e9:	48 83 c0 40          	add    $0x40,%rax
     4ed:	48 83 c2 40          	add    $0x40,%rdx
     4f1:	c5 d8 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm2
      if (!__f)
     4f7:	c5 f8 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm1
     4fd:	c5 d8 c6 60 d0 dd    	vshufps $0xdd,-0x30(%rax),%xmm4,%xmm4
     503:	c5 f8 c6 40 f0 dd    	vshufps $0xdd,-0x10(%rax),%xmm0,%xmm0
     509:	c5 e8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm2,%xmm3
    { return __os.flush(); }
     50e:	c5 e8 c6 c9 dd       	vshufps $0xdd,%xmm1,%xmm2,%xmm1
     513:	c5 d8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm2
	__ostream_insert(__out, __s,
     518:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
     51d:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
     522:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
     526:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
     52a:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     52e:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
     532:	c5 e0 5e dc          	vdivps %xmm4,%xmm3,%xmm3
      { return __check_facet(_M_ctype).widen(__c); }
     536:	c5 e0 58 dc          	vaddps %xmm4,%xmm3,%xmm3
     53a:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
      if (!__f)
     53f:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
     543:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
     547:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
     54b:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     54f:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     553:	c5 e8 5e d4          	vdivps %xmm4,%xmm2,%xmm2
     557:	c5 e8 58 d4          	vaddps %xmm4,%xmm2,%xmm2
     55b:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
     560:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
    { return __os.flush(); }
     564:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
     568:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
       start = steady_clock::now();
     56c:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     570:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     574:	c5 f0 5e cc          	vdivps %xmm4,%xmm1,%xmm1
     578:	c5 f0 58 cc          	vaddps %xmm4,%xmm1,%xmm1
     57c:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
     581:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
     585:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
     589:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
     58d:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     591:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
template <size_t LOOPS = 2>
float sqrt1(float * a) {
  float root;
  int * ai = reinterpret_cast<int *>(a);
  int * initial = reinterpret_cast<int *>(&root);
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     595:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
     599:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
     59d:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
     5a1:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
     5a5:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
  root = * reinterpret_cast<float *>(initial);
  for(size_t i = 0; i < LOOPS; i++) {
    root = 0.5 * (root + (* a / root));
     5a9:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
     5ad:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
     5b1:	c5 d8 14 d3          	vunpcklps %xmm3,%xmm4,%xmm2
     5b5:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
     5b9:	c5 f8 29 52 c0       	vmovaps %xmm2,-0x40(%rdx)

    std::cout << "sqrt1 (Newton method for single float, one time a loop)" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i++) {
        roots[i] = sqrt1<LOOPS>(floats + i);
     5be:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
     5c2:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
     5c6:	c5 f8 29 62 d0       	vmovaps %xmm4,-0x30(%rdx)
     5cb:	c5 f8 29 52 e0       	vmovaps %xmm2,-0x20(%rdx)
       end = steady_clock::now();
     5d0:	c5 f8 29 4a f0       	vmovaps %xmm1,-0x10(%rdx)
      }
    }    
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     5d5:	48 39 d8             	cmp    %rbx,%rax
     5d8:	0f 85 02 ff ff ff    	jne    4e0 <_Z17measure_sqrt_timeILy2EEvv+0x4e0>
     5de:	ff c9                	dec    %ecx
     5e0:	0f 85 ea fe ff ff    	jne    4d0 <_Z17measure_sqrt_timeILy2EEvv+0x4d0>
     5e6:	e8 00 00 00 00       	callq  5eb <_Z17measure_sqrt_timeILy2EEvv+0x5eb>
     5eb:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     5f2:	9b c4 20 
     5f5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
      { return _M_insert(__n); }
     5f9:	48 29 f0             	sub    %rsi,%rax
     5fc:	48 89 c1             	mov    %rax,%rcx
     5ff:	48 f7 ea             	imul   %rdx
     602:	48 c1 f9 3f          	sar    $0x3f,%rcx
	__ostream_insert(__out, __s,
     606:	48 c1 fa 07          	sar    $0x7,%rdx
     60a:	48 29 ca             	sub    %rcx,%rdx
     60d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 614 <_Z17measure_sqrt_timeILy2EEvv+0x614>
     614:	e8 00 00 00 00       	callq  619 <_Z17measure_sqrt_timeILy2EEvv+0x619>
     619:	41 b8 05 00 00 00    	mov    $0x5,%r8d
      { return __check_facet(_M_ctype).widen(__c); }
     61f:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 65a <_Z17measure_sqrt_timeILy2EEvv+0x65a>
     626:	48 89 c6             	mov    %rax,%rsi
     629:	48 89 c1             	mov    %rax,%rcx
      if (!__f)
     62c:	e8 00 00 00 00       	callq  631 <_Z17measure_sqrt_timeILy2EEvv+0x631>
     631:	48 8b 06             	mov    (%rsi),%rax
     634:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     638:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     63f:	00 
     640:	48 85 db             	test   %rbx,%rbx
    { return flush(__os.put(__os.widen('\n'))); }
     643:	0f 84 4c fc ff ff    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
    { return __os.flush(); }
     649:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     64d:	0f 84 b3 0a 00 00    	je     1106 <_Z17measure_sqrt_timeILy2EEvv+0x1106>
	__ostream_insert(__out, __s,
     653:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     657:	48 89 f1             	mov    %rsi,%rcx
     65a:	e8 00 00 00 00       	callq  65f <_Z17measure_sqrt_timeILy2EEvv+0x65f>
     65f:	48 89 c1             	mov    %rax,%rcx
     662:	e8 00 00 00 00       	callq  667 <_Z17measure_sqrt_timeILy2EEvv+0x667>
     667:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 66e <_Z17measure_sqrt_timeILy2EEvv+0x66e>
      { return __check_facet(_M_ctype).widen(__c); }
     66e:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
     674:	48 8d 15 b8 00 00 00 	lea    0xb8(%rip),%rdx        # 733 <_Z17measure_sqrt_timeILy2EEvv+0x733>
      if (!__f)
     67b:	e8 00 00 00 00       	callq  680 <_Z17measure_sqrt_timeILy2EEvv+0x680>
     680:	49 8b 04 24          	mov    (%r12),%rax
     684:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     688:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     68f:	00 
     690:	48 85 db             	test   %rbx,%rbx
    { return flush(__os.put(__os.widen('\n'))); }
     693:	0f 84 fc fb ff ff    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
     699:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    { return __os.flush(); }
     69d:	0f 84 d0 09 00 00    	je     1073 <_Z17measure_sqrt_timeILy2EEvv+0x1073>
     6a3:	0f be 53 43          	movsbl 0x43(%rbx),%edx
       start = steady_clock::now();
     6a7:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 6ae <_Z17measure_sqrt_timeILy2EEvv+0x6ae>
     6ae:	e8 00 00 00 00       	callq  6b3 <_Z17measure_sqrt_timeILy2EEvv+0x6b3>
     6b3:	48 89 c1             	mov    %rax,%rcx
     6b6:	e8 00 00 00 00       	callq  6bb <_Z17measure_sqrt_timeILy2EEvv+0x6bb>
     6bb:	e8 00 00 00 00       	callq  6c0 <_Z17measure_sqrt_timeILy2EEvv+0x6c0>
     6c0:	41 b8 e8 03 00 00    	mov    $0x3e8,%r8d
     6c6:	4c 8d 8f 04 35 0c 00 	lea    0xc3504(%rdi),%r9
     6cd:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     6d1:	48 89 c3             	mov    %rax,%rbx
     6d4:	c5 fa 10 af c0 69 18 	vmovss 0x1869c0(%rdi),%xmm5
     6db:	00 
     6dc:	c5 7a 10 bf c8 69 18 	vmovss 0x1869c8(%rdi),%xmm15
     6e3:	00 
     6e4:	b8 01 00 00 00       	mov    $0x1,%eax
     6e9:	c4 e2 7a f7 87 c0 69 	sarx   %eax,0x1869c0(%rdi),%eax
     6f0:	18 00 
     6f2:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     6f7:	48 8d 8f c4 69 18 00 	lea    0x1869c4(%rdi),%rcx
     6fe:	89 45 bc             	mov    %eax,-0x44(%rbp)
     701:	b8 01 00 00 00       	mov    $0x1,%eax
     706:	c4 e2 7a f7 87 c4 69 	sarx   %eax,0x1869c4(%rdi),%eax
     70d:	18 00 
     70f:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     714:	c5 fa 10 45 bc       	vmovss -0x44(%rbp),%xmm0
    root = 0.5 * (root + (* a / root));
     719:	89 45 bc             	mov    %eax,-0x44(%rbp)
     71c:	b8 01 00 00 00       	mov    $0x1,%eax
     721:	c4 e2 7a f7 87 c8 69 	sarx   %eax,0x1869c8(%rdi),%eax
     728:	18 00 
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     72a:	c5 fa 10 5d bc       	vmovss -0x44(%rbp),%xmm3
     72f:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root = 0.5 * (root + (* a / root));
     734:	89 45 bc             	mov    %eax,-0x44(%rbp)
     737:	b8 01 00 00 00       	mov    $0x1,%eax
     73c:	c4 e2 7a f7 87 cc 69 	sarx   %eax,0x1869cc(%rdi),%eax
     743:	18 00 
     745:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     74a:	c5 fa 10 55 bc       	vmovss -0x44(%rbp),%xmm2
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     74f:	89 45 bc             	mov    %eax,-0x44(%rbp)
     752:	b8 01 00 00 00       	mov    $0x1,%eax
    root = 0.5 * (root + (* a / root));
     757:	c4 e2 7a f7 87 d0 69 	sarx   %eax,0x1869d0(%rdi),%eax
     75e:	18 00 
     760:	c5 fa 10 4d bc       	vmovss -0x44(%rbp),%xmm1
     765:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     76a:	89 45 b0             	mov    %eax,-0x50(%rbp)
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     76d:	b8 01 00 00 00       	mov    $0x1,%eax
     772:	c4 e2 7a f7 87 d4 69 	sarx   %eax,0x1869d4(%rdi),%eax
     779:	18 00 
    root = 0.5 * (root + (* a / root));
     77b:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     780:	c5 d2 5e e0          	vdivss %xmm0,%xmm5,%xmm4
     784:	c5 da 58 e0          	vaddss %xmm0,%xmm4,%xmm4
     788:	c5 fa 10 05 70 01 00 	vmovss 0x170(%rip),%xmm0        # 900 <_Z17measure_sqrt_timeILy2EEvv+0x900>
     78f:	00 
    std::cout << "sqrt1 (Newton method for single float, four times a loop)" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i += 4) {
        for (int k = 0; k < 4; k++) {
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
     790:	c5 da 59 e8          	vmulss %xmm0,%xmm4,%xmm5
     794:	c5 fa 10 a7 c4 69 18 	vmovss 0x1869c4(%rdi),%xmm4
     79b:	00 
     79c:	c5 fa 11 6d b8       	vmovss %xmm5,-0x48(%rbp)
     7a1:	c5 da 5e e3          	vdivss %xmm3,%xmm4,%xmm4
     7a5:	c5 da 58 db          	vaddss %xmm3,%xmm4,%xmm3
     7a9:	c5 e2 59 e0          	vmulss %xmm0,%xmm3,%xmm4
     7ad:	c5 82 5e da          	vdivss %xmm2,%xmm15,%xmm3
     7b1:	c5 7a 10 bf cc 69 18 	vmovss 0x1869cc(%rdi),%xmm15
     7b8:	00 
     7b9:	c5 fa 11 65 bc       	vmovss %xmm4,-0x44(%rbp)
     7be:	c5 fa 10 65 b0       	vmovss -0x50(%rbp),%xmm4
     7c3:	89 45 b0             	mov    %eax,-0x50(%rbp)
     7c6:	b8 01 00 00 00       	mov    $0x1,%eax
     7cb:	c4 e2 7a f7 87 d8 69 	sarx   %eax,0x1869d8(%rdi),%eax
     7d2:	18 00 
    for (int j = 0; j < LOOP; j++) {
     7d4:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
       end = steady_clock::now();
     7d9:	c5 e2 58 d2          	vaddss %xmm2,%xmm3,%xmm2
        }
      }
    }    
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     7dd:	c5 fa 10 5d b0       	vmovss -0x50(%rbp),%xmm3
     7e2:	89 45 b0             	mov    %eax,-0x50(%rbp)
     7e5:	b8 01 00 00 00       	mov    $0x1,%eax
     7ea:	c4 e2 7a f7 87 dc 69 	sarx   %eax,0x1869dc(%rdi),%eax
     7f1:	18 00 
     7f3:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     7f8:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
     7fc:	c5 fa 11 55 b4       	vmovss %xmm2,-0x4c(%rbp)
      { return _M_insert(__n); }
     801:	c5 82 5e d1          	vdivss %xmm1,%xmm15,%xmm2
     805:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
	__ostream_insert(__out, __s,
     809:	c5 fa 10 55 b0       	vmovss -0x50(%rbp),%xmm2
     80e:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     812:	c5 fa 11 4d a8       	vmovss %xmm1,-0x58(%rbp)
      { return _M_insert(__n); }
     817:	89 45 b0             	mov    %eax,-0x50(%rbp)
	__ostream_insert(__out, __s,
     81a:	c5 7a 10 bf d0 69 18 	vmovss 0x1869d0(%rdi),%xmm15
     821:	00 
    { return flush(__os.put(__os.widen('\n'))); }
     822:	b8 01 00 00 00       	mov    $0x1,%eax
      { return __check_facet(_M_ctype).widen(__c); }
     827:	c4 e2 7a f7 87 e0 69 	sarx   %eax,0x1869e0(%rdi),%eax
     82e:	18 00 
      if (!__f)
     830:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     835:	c5 fa 10 4d b0       	vmovss -0x50(%rbp),%xmm1
     83a:	89 45 b0             	mov    %eax,-0x50(%rbp)
     83d:	c5 7a 10 a7 e0 69 18 	vmovss 0x1869e0(%rdi),%xmm12
     844:	00 
     845:	b8 01 00 00 00       	mov    $0x1,%eax
     84a:	c5 7a 10 55 b0       	vmovss -0x50(%rbp),%xmm10
    { return __os.flush(); }
     84f:	c4 e2 7a f7 87 e4 69 	sarx   %eax,0x1869e4(%rdi),%eax
     856:	18 00 
	__ostream_insert(__out, __s,
     858:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     85d:	89 45 b0             	mov    %eax,-0x50(%rbp)
     860:	b8 01 00 00 00       	mov    $0x1,%eax
     865:	c4 e2 7a f7 87 e8 69 	sarx   %eax,0x1869e8(%rdi),%eax
     86c:	18 00 
     86e:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    { return flush(__os.put(__os.widen('\n'))); }
     873:	c5 7a 10 4d b0       	vmovss -0x50(%rbp),%xmm9
      { return __check_facet(_M_ctype).widen(__c); }
     878:	89 45 b0             	mov    %eax,-0x50(%rbp)
     87b:	b8 01 00 00 00       	mov    $0x1,%eax
      if (!__f)
     880:	c4 e2 7a f7 87 ec 69 	sarx   %eax,0x1869ec(%rdi),%eax
     887:	18 00 
     889:	c5 7a 10 45 b0       	vmovss -0x50(%rbp),%xmm8
     88e:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     893:	c5 7a 10 af e8 69 18 	vmovss 0x1869e8(%rdi),%xmm13
     89a:	00 
     89b:	89 45 b0             	mov    %eax,-0x50(%rbp)
     89e:	b8 01 00 00 00       	mov    $0x1,%eax
    { return __os.flush(); }
     8a3:	c4 e2 7a f7 87 f0 69 	sarx   %eax,0x1869f0(%rdi),%eax
     8aa:	18 00 
       start = steady_clock::now();
     8ac:	c5 82 5e ec          	vdivss %xmm4,%xmm15,%xmm5
    int * initial = reinterpret_cast<int *>(&root[i]);
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    root[i] = * reinterpret_cast<float *>(initial);
  }
  for(size_t j = 0; j < LOOPS; j++) {
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     8b0:	c5 7a 10 bf d4 69 18 	vmovss 0x1869d4(%rdi),%xmm15
     8b7:	00 
     8b8:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     8bd:	c5 d2 58 e4          	vaddss %xmm4,%xmm5,%xmm4
     8c1:	c5 82 5e eb          	vdivss %xmm3,%xmm15,%xmm5
     8c5:	c5 7a 10 bf d8 69 18 	vmovss 0x1869d8(%rdi),%xmm15
     8cc:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     8cd:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     8d1:	c5 d2 58 db          	vaddss %xmm3,%xmm5,%xmm3
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     8d5:	c5 82 5e ea          	vdivss %xmm2,%xmm15,%xmm5
     8d9:	c5 7a 10 bf dc 69 18 	vmovss 0x1869dc(%rdi),%xmm15
     8e0:	00 
     8e1:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     8e5:	c4 41 1a 5e da       	vdivss %xmm10,%xmm12,%xmm11
     8ea:	c5 d2 58 d2          	vaddss %xmm2,%xmm5,%xmm2
     8ee:	c5 7a 10 a7 ec 69 18 	vmovss 0x1869ec(%rdi),%xmm12
     8f5:	00 
     8f6:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
     8fa:	c5 82 5e e9          	vdivss %xmm1,%xmm15,%xmm5
     8fe:	c5 7a 10 bf e4 69 18 	vmovss 0x1869e4(%rdi),%xmm15
     905:	00 
     906:	c4 41 22 58 d2       	vaddss %xmm10,%xmm11,%xmm10
     90b:	c5 2a 59 d0          	vmulss %xmm0,%xmm10,%xmm10
     90f:	c4 41 02 5e d9       	vdivss %xmm9,%xmm15,%xmm11
     914:	c5 d2 58 c9          	vaddss %xmm1,%xmm5,%xmm1
     918:	c5 fa 10 6d b0       	vmovss -0x50(%rbp),%xmm5
     91d:	89 45 b0             	mov    %eax,-0x50(%rbp)
     920:	c5 7a 10 bf f0 69 18 	vmovss 0x1869f0(%rdi),%xmm15
     927:	00 
     928:	b8 01 00 00 00       	mov    $0x1,%eax
     92d:	c4 e2 7a f7 87 f4 69 	sarx   %eax,0x1869f4(%rdi),%eax
     934:	18 00 
     936:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     93b:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     93f:	c4 41 22 58 c9       	vaddss %xmm9,%xmm11,%xmm9
     944:	c4 41 12 5e d8       	vdivss %xmm8,%xmm13,%xmm11
     949:	c5 32 59 c8          	vmulss %xmm0,%xmm9,%xmm9
     94d:	c4 41 22 58 c0       	vaddss %xmm8,%xmm11,%xmm8
     952:	c5 1a 5e dd          	vdivss %xmm5,%xmm12,%xmm11
     956:	c5 7a 10 65 b0       	vmovss -0x50(%rbp),%xmm12
     95b:	89 45 b0             	mov    %eax,-0x50(%rbp)
     95e:	b8 01 00 00 00       	mov    $0x1,%eax
     963:	c4 e2 7a f7 87 f8 69 	sarx   %eax,0x1869f8(%rdi),%eax
     96a:	18 00 
     96c:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     971:	c5 7a 10 75 b0       	vmovss -0x50(%rbp),%xmm14
     976:	89 45 ac             	mov    %eax,-0x54(%rbp)
     979:	b8 01 00 00 00       	mov    $0x1,%eax
     97e:	c4 e2 7a f7 87 fc 69 	sarx   %eax,0x1869fc(%rdi),%eax
     985:	18 00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     987:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     98c:	89 45 b0             	mov    %eax,-0x50(%rbp)
     98f:	c5 7a 10 af f4 69 18 	vmovss 0x1869f4(%rdi),%xmm13
     996:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     997:	c5 3a 59 c0          	vmulss %xmm0,%xmm8,%xmm8
     99b:	c5 a2 58 ed          	vaddss %xmm5,%xmm11,%xmm5
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     99f:	c4 41 02 5e dc       	vdivss %xmm12,%xmm15,%xmm11
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     9a4:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     9a8:	c4 41 12 5e ee       	vdivss %xmm14,%xmm13,%xmm13
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     9ad:	c4 41 22 58 dc       	vaddss %xmm12,%xmm11,%xmm11
     9b2:	c5 22 59 f8          	vmulss %xmm0,%xmm11,%xmm15
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     9b6:	c5 7a 10 9f f8 69 18 	vmovss 0x1869f8(%rdi),%xmm11
     9bd:	00 
     9be:	c4 41 12 58 ee       	vaddss %xmm14,%xmm13,%xmm13
     9c3:	c5 7a 10 75 ac       	vmovss -0x54(%rbp),%xmm14
     9c8:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     9cc:	c4 41 22 5e e6       	vdivss %xmm14,%xmm11,%xmm12
     9d1:	c5 7a 10 9f fc 69 18 	vmovss 0x1869fc(%rdi),%xmm11
     9d8:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     9d9:	c4 41 1a 58 e6       	vaddss %xmm14,%xmm12,%xmm12
     9de:	c5 7a 10 75 b0       	vmovss -0x50(%rbp),%xmm14
     9e3:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
     9e7:	c4 41 22 5e de       	vdivss %xmm14,%xmm11,%xmm11
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     9ec:	c4 41 22 58 de       	vaddss %xmm14,%xmm11,%xmm11
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     9f1:	c5 7a 10 b7 f0 69 18 	vmovss 0x1869f0(%rdi),%xmm14
     9f8:	00 
     9f9:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
     9fd:	c4 41 0a 5e f7       	vdivss %xmm15,%xmm14,%xmm14
     a02:	c4 41 0a 58 f7       	vaddss %xmm15,%xmm14,%xmm14
     a07:	c5 0a 59 f8          	vmulss %xmm0,%xmm14,%xmm15
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a0b:	c5 7a 10 b7 f4 69 18 	vmovss 0x1869f4(%rdi),%xmm14
     a12:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a13:	c4 41 0a 5e f5       	vdivss %xmm13,%xmm14,%xmm14
     a18:	c4 41 0a 58 ed       	vaddss %xmm13,%xmm14,%xmm13
     a1d:	c5 12 59 f0          	vmulss %xmm0,%xmm13,%xmm14
     a21:	c5 7a 10 af f8 69 18 	vmovss 0x1869f8(%rdi),%xmm13
     a28:	00 
     a29:	c4 41 12 5e ec       	vdivss %xmm12,%xmm13,%xmm13
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a2e:	c4 41 12 58 e4       	vaddss %xmm12,%xmm13,%xmm12
     a33:	c5 1a 59 e8          	vmulss %xmm0,%xmm12,%xmm13
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a37:	c5 7a 10 a7 fc 69 18 	vmovss 0x1869fc(%rdi),%xmm12
     a3e:	00 
     a3f:	c4 41 1a 5e e3       	vdivss %xmm11,%xmm12,%xmm12
     a44:	c4 41 1a 58 db       	vaddss %xmm11,%xmm12,%xmm11
     a49:	c4 41 00 14 e6       	vunpcklps %xmm14,%xmm15,%xmm12
     a4e:	c5 7a 10 bf e0 69 18 	vmovss 0x1869e0(%rdi),%xmm15
     a55:	00 
     a56:	c5 7a 10 b7 cc 69 18 	vmovss 0x1869cc(%rdi),%xmm14
     a5d:	00 
     a5e:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
     a62:	c4 41 10 14 db       	vunpcklps %xmm11,%xmm13,%xmm11
     a67:	c5 7a 10 af e8 69 18 	vmovss 0x1869e8(%rdi),%xmm13
     a6e:	00 
     a6f:	c4 41 18 16 e3       	vmovlhps %xmm11,%xmm12,%xmm12
     a74:	c4 41 02 5e da       	vdivss %xmm10,%xmm15,%xmm11
     a79:	c5 7a 10 bf e4 69 18 	vmovss 0x1869e4(%rdi),%xmm15
     a80:	00 
     a81:	c4 41 22 58 da       	vaddss %xmm10,%xmm11,%xmm11
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     a86:	c4 41 02 5e d1       	vdivss %xmm9,%xmm15,%xmm10
     a8b:	c5 7a 10 bf ec 69 18 	vmovss 0x1869ec(%rdi),%xmm15
     a92:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a93:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
     a97:	c4 41 2a 58 d1       	vaddss %xmm9,%xmm10,%xmm10
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a9c:	c4 41 12 5e c8       	vdivss %xmm8,%xmm13,%xmm9
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     aa1:	c5 7a 10 af d0 69 18 	vmovss 0x1869d0(%rdi),%xmm13
     aa8:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     aa9:	c5 2a 59 d0          	vmulss %xmm0,%xmm10,%xmm10
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     aad:	c4 41 20 14 d2       	vunpcklps %xmm10,%xmm11,%xmm10
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ab2:	c4 41 32 58 c0       	vaddss %xmm8,%xmm9,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ab7:	c5 02 5e cd          	vdivss %xmm5,%xmm15,%xmm9
     abb:	c5 7a 10 bf d4 69 18 	vmovss 0x1869d4(%rdi),%xmm15
     ac2:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ac3:	c5 3a 59 c0          	vmulss %xmm0,%xmm8,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ac7:	c5 b2 58 ed          	vaddss %xmm5,%xmm9,%xmm5
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     acb:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     acf:	c5 b8 14 ed          	vunpcklps %xmm5,%xmm8,%xmm5
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ad3:	c5 12 5e c4          	vdivss %xmm4,%xmm13,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     ad7:	c5 7a 10 af d8 69 18 	vmovss 0x1869d8(%rdi),%xmm13
     ade:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     adf:	c5 a8 16 ed          	vmovlhps %xmm5,%xmm10,%xmm5
     ae3:	c5 ba 58 e4          	vaddss %xmm4,%xmm8,%xmm4
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ae7:	c5 02 5e c3          	vdivss %xmm3,%xmm15,%xmm8
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     aeb:	c5 7a 10 bf dc 69 18 	vmovss 0x1869dc(%rdi),%xmm15
     af2:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     af3:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     af7:	c5 ba 58 db          	vaddss %xmm3,%xmm8,%xmm3
     afb:	c5 12 5e c2          	vdivss %xmm2,%xmm13,%xmm8
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     aff:	c5 7a 10 af c0 69 18 	vmovss 0x1869c0(%rdi),%xmm13
     b06:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b07:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     b0b:	c5 ba 58 d2          	vaddss %xmm2,%xmm8,%xmm2
     b0f:	c5 02 5e c1          	vdivss %xmm1,%xmm15,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     b13:	c5 7a 10 bf c8 69 18 	vmovss 0x1869c8(%rdi),%xmm15
     b1a:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     b1b:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
     b1f:	c5 ba 58 c9          	vaddss %xmm1,%xmm8,%xmm1
     b23:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     b27:	c5 e8 14 c9          	vunpcklps %xmm1,%xmm2,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b2b:	c5 d8 14 d3          	vunpcklps %xmm3,%xmm4,%xmm2
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b2f:	c5 fa 10 5d b8       	vmovss -0x48(%rbp),%xmm3
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     b34:	c5 fa 10 65 bc       	vmovss -0x44(%rbp),%xmm4
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b39:	c5 e8 16 d1          	vmovlhps %xmm1,%xmm2,%xmm2
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     b3d:	c5 92 5e cb          	vdivss %xmm3,%xmm13,%xmm1
     b41:	c5 f2 58 cb          	vaddss %xmm3,%xmm1,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b45:	c5 fa 10 9f c4 69 18 	vmovss 0x1869c4(%rdi),%xmm3
     b4c:	00 
     b4d:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     b51:	c5 e2 5e dc          	vdivss %xmm4,%xmm3,%xmm3
     b55:	c5 e2 58 dc          	vaddss %xmm4,%xmm3,%xmm3
     b59:	c5 fa 10 65 b4       	vmovss -0x4c(%rbp),%xmm4
     b5e:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     b62:	c5 f0 14 cb          	vunpcklps %xmm3,%xmm1,%xmm1
     b66:	c5 02 5e ec          	vdivss %xmm4,%xmm15,%xmm13
     b6a:	c5 7a 10 7d a8       	vmovss -0x58(%rbp),%xmm15
     b6f:	c5 12 58 ec          	vaddss %xmm4,%xmm13,%xmm13
     b73:	c4 c1 0a 5e e7       	vdivss %xmm15,%xmm14,%xmm4
     b78:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
     b7c:	c4 c1 5a 58 e7       	vaddss %xmm15,%xmm4,%xmm4
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b81:	c5 da 59 c0          	vmulss %xmm0,%xmm4,%xmm0
     b85:	c5 90 14 c0          	vunpcklps %xmm0,%xmm13,%xmm0
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     b89:	c5 70 16 e8          	vmovlhps %xmm0,%xmm1,%xmm13
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b8d:	4c 89 c8             	mov    %r9,%rax
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     b90:	48 89 fa             	mov    %rdi,%rdx
     b93:	c5 f8 28 58 fc       	vmovaps -0x4(%rax),%xmm3
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b98:	48 83 c0 40          	add    $0x40,%rax
     b9c:	48 83 c2 40          	add    $0x40,%rdx
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     ba0:	c5 e0 c6 48 cc 88    	vshufps $0x88,-0x34(%rax),%xmm3,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ba6:	c5 f8 28 58 dc       	vmovaps -0x24(%rax),%xmm3
     bab:	c5 e0 c6 40 ec 88    	vshufps $0x88,-0x14(%rax),%xmm3,%xmm0
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     bb1:	c5 f8 10 58 c0       	vmovups -0x40(%rax),%xmm3
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bb6:	c5 e0 c6 60 d0 88    	vshufps $0x88,-0x30(%rax),%xmm3,%xmm4
     bbc:	c5 f8 10 58 e0       	vmovups -0x20(%rax),%xmm3
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bc1:	c5 f0 c6 c8 88       	vshufps $0x88,%xmm0,%xmm1,%xmm1
     bc6:	c5 f1 72 e1 01       	vpsrad $0x1,%xmm1,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bcb:	c5 f1 fe cf          	vpaddd %xmm7,%xmm1,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bcf:	c5 e0 c6 40 f0 88    	vshufps $0x88,-0x10(%rax),%xmm3,%xmm0
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bd5:	c5 f8 10 58 c4       	vmovups -0x3c(%rax),%xmm3
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bda:	c5 d8 c6 e0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm4
     bdf:	c5 f8 10 40 e4       	vmovups -0x1c(%rax),%xmm0
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     be4:	c5 e0 c6 58 d4 88    	vshufps $0x88,-0x2c(%rax),%xmm3,%xmm3
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bea:	c5 d9 72 e4 01       	vpsrad $0x1,%xmm4,%xmm4
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     bef:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
     bf3:	c5 f8 c6 40 f4 88    	vshufps $0x88,-0xc(%rax),%xmm0,%xmm0
     bf9:	c5 e0 c6 d8 88       	vshufps $0x88,%xmm0,%xmm3,%xmm3
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     bfe:	c5 f8 10 40 c8       	vmovups -0x38(%rax),%xmm0
     c03:	c5 e1 72 e3 01       	vpsrad $0x1,%xmm3,%xmm3
     c08:	c5 e1 fe df          	vpaddd %xmm7,%xmm3,%xmm3
     c0c:	c5 78 c6 40 d8 88    	vshufps $0x88,-0x28(%rax),%xmm0,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c12:	c5 f8 10 40 e8       	vmovups -0x18(%rax),%xmm0
     c17:	c5 f8 c6 40 f8 88    	vshufps $0x88,-0x8(%rax),%xmm0,%xmm0
     c1d:	c5 38 c6 c0 88       	vshufps $0x88,%xmm0,%xmm8,%xmm8
     c22:	c5 f8 28 40 bc       	vmovaps -0x44(%rax),%xmm0
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c27:	c4 c1 39 72 e0 01    	vpsrad $0x1,%xmm8,%xmm8
     c2d:	c5 39 fe c7          	vpaddd %xmm7,%xmm8,%xmm8
     c31:	c5 78 c6 48 cc 88    	vshufps $0x88,-0x34(%rax),%xmm0,%xmm9
     c37:	c5 f8 28 40 dc       	vmovaps -0x24(%rax),%xmm0
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c3c:	c5 f8 c6 40 ec 88    	vshufps $0x88,-0x14(%rax),%xmm0,%xmm0
     c42:	c5 b0 c6 c0 88       	vshufps $0x88,%xmm0,%xmm9,%xmm0
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c47:	c5 78 5e d9          	vdivps %xmm1,%xmm0,%xmm11
     c4b:	c5 a0 58 c9          	vaddps %xmm1,%xmm11,%xmm1
     c4f:	c5 70 59 de          	vmulps %xmm6,%xmm1,%xmm11
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c53:	c5 f8 10 48 c0       	vmovups -0x40(%rax),%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c58:	c4 c1 78 5e c3       	vdivps %xmm11,%xmm0,%xmm0
     c5d:	c5 70 c6 48 d0 88    	vshufps $0x88,-0x30(%rax),%xmm1,%xmm9
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c63:	c5 f8 10 48 e0       	vmovups -0x20(%rax),%xmm1
     c68:	c4 c1 78 58 c3       	vaddps %xmm11,%xmm0,%xmm0
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c6d:	c5 f0 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm1,%xmm1
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c73:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c77:	c5 b0 c6 c9 88       	vshufps $0x88,%xmm1,%xmm9,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c7c:	c5 70 5e d4          	vdivps %xmm4,%xmm1,%xmm10
     c80:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c84:	c5 58 59 d6          	vmulps %xmm6,%xmm4,%xmm10
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c88:	c5 f8 10 60 c4       	vmovups -0x3c(%rax),%xmm4
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c8d:	c4 c1 70 5e ca       	vdivps %xmm10,%xmm1,%xmm1
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c92:	c5 58 c6 48 d4 88    	vshufps $0x88,-0x2c(%rax),%xmm4,%xmm9
     c98:	c5 f8 10 60 e4       	vmovups -0x1c(%rax),%xmm4
     c9d:	c4 c1 70 58 ca       	vaddps %xmm10,%xmm1,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ca2:	c5 d8 c6 60 f4 88    	vshufps $0x88,-0xc(%rax),%xmm4,%xmm4
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     ca8:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     cac:	c5 b0 c6 e4 88       	vshufps $0x88,%xmm4,%xmm9,%xmm4
     cb1:	c5 58 5e cb          	vdivps %xmm3,%xmm4,%xmm9
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cb5:	c5 b0 58 db          	vaddps %xmm3,%xmm9,%xmm3
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     cb9:	c5 60 59 ce          	vmulps %xmm6,%xmm3,%xmm9
     cbd:	c5 f8 10 58 c8       	vmovups -0x38(%rax),%xmm3
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cc2:	c4 c1 58 5e e1       	vdivps %xmm9,%xmm4,%xmm4
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cc7:	c5 60 c6 70 d8 88    	vshufps $0x88,-0x28(%rax),%xmm3,%xmm14
     ccd:	c5 f8 10 58 e8       	vmovups -0x18(%rax),%xmm3
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cd2:	c4 c1 58 58 e1       	vaddps %xmm9,%xmm4,%xmm4
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     cd7:	c5 e0 c6 58 f8 88    	vshufps $0x88,-0x8(%rax),%xmm3,%xmm3
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     cdd:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     ce1:	c5 88 c6 db 88       	vshufps $0x88,%xmm3,%xmm14,%xmm3
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     ce6:	c4 41 60 5e f0       	vdivps %xmm8,%xmm3,%xmm14
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ceb:	c4 41 08 58 c0       	vaddps %xmm8,%xmm14,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cf0:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
     cf4:	c4 c1 60 5e d8       	vdivps %xmm8,%xmm3,%xmm3
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     cf9:	c4 c1 60 58 d8       	vaddps %xmm8,%xmm3,%xmm3
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cfe:	c5 78 14 c4          	vunpcklps %xmm4,%xmm0,%xmm8
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d02:	c5 f8 15 c4          	vunpckhps %xmm4,%xmm0,%xmm0
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d06:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
     d0a:	c5 f0 14 e3          	vunpcklps %xmm3,%xmm1,%xmm4
     d0e:	c5 f0 15 cb          	vunpckhps %xmm3,%xmm1,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d12:	c5 b8 14 dc          	vunpcklps %xmm4,%xmm8,%xmm3
     d16:	c5 38 15 c4          	vunpckhps %xmm4,%xmm8,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d1a:	c5 f8 29 5a c0       	vmovaps %xmm3,-0x40(%rdx)
     d1f:	c5 f8 14 d9          	vunpcklps %xmm1,%xmm0,%xmm3
     d23:	c5 f8 15 c1          	vunpckhps %xmm1,%xmm0,%xmm0
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     d27:	c5 78 29 42 d0       	vmovaps %xmm8,-0x30(%rdx)
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d2c:	c5 f8 29 5a e0       	vmovaps %xmm3,-0x20(%rdx)
     d31:	c5 f8 29 42 f0       	vmovaps %xmm0,-0x10(%rdx)
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     d36:	48 39 c1             	cmp    %rax,%rcx
     d39:	0f 85 54 fe ff ff    	jne    b93 <_Z17measure_sqrt_timeILy2EEvv+0xb93>
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d3f:	41 ff c8             	dec    %r8d
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     d42:	c5 78 29 af c0 34 0c 	vmovaps %xmm13,0xc34c0(%rdi)
     d49:	00 
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d4a:	c5 f8 29 97 d0 34 0c 	vmovaps %xmm2,0xc34d0(%rdi)
     d51:	00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d52:	c5 f8 29 af e0 34 0c 	vmovaps %xmm5,0xc34e0(%rdi)
     d59:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d5a:	c5 78 29 a7 f0 34 0c 	vmovaps %xmm12,0xc34f0(%rdi)
     d61:	00 
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d62:	0f 85 25 fe ff ff    	jne    b8d <_Z17measure_sqrt_timeILy2EEvv+0xb8d>
     d68:	e8 00 00 00 00       	callq  d6d <_Z17measure_sqrt_timeILy2EEvv+0xd6d>
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d6d:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     d74:	9b c4 20 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d77:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     d7b:	48 29 d8             	sub    %rbx,%rax
     d7e:	48 89 c1             	mov    %rax,%rcx
     d81:	48 f7 ea             	imul   %rdx
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     d84:	48 c1 f9 3f          	sar    $0x3f,%rcx
     d88:	48 c1 fa 07          	sar    $0x7,%rdx
     d8c:	48 29 ca             	sub    %rcx,%rdx
     d8f:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # d96 <_Z17measure_sqrt_timeILy2EEvv+0xd96>
     d96:	e8 00 00 00 00       	callq  d9b <_Z17measure_sqrt_timeILy2EEvv+0xd9b>
     d9b:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     da1:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # ddc <_Z17measure_sqrt_timeILy2EEvv+0xddc>
     da8:	48 89 c6             	mov    %rax,%rsi
     dab:	48 89 c1             	mov    %rax,%rcx
     dae:	e8 00 00 00 00       	callq  db3 <_Z17measure_sqrt_timeILy2EEvv+0xdb3>
     db3:	48 8b 06             	mov    (%rsi),%rax
     db6:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     dba:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     dc1:	00 
     dc2:	48 85 db             	test   %rbx,%rbx
     dc5:	0f 84 ca f4 ff ff    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
     dcb:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     dcf:	0f 84 cf 02 00 00    	je     10a4 <_Z17measure_sqrt_timeILy2EEvv+0x10a4>
void measure_sqrt_time(void) {
     dd5:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     dd9:	48 89 f1             	mov    %rsi,%rcx
     ddc:	e8 00 00 00 00       	callq  de1 <_Z17measure_sqrt_timeILy2EEvv+0xde1>
     de1:	48 89 c1             	mov    %rax,%rcx
     de4:	e8 00 00 00 00       	callq  de9 <_Z17measure_sqrt_timeILy2EEvv+0xde9>
     de9:	e8 00 00 00 00       	callq  dee <_Z17measure_sqrt_timeILy2EEvv+0xdee>
     dee:	ba e8 03 00 00       	mov    $0x3e8,%edx
     df3:	48 89 c6             	mov    %rax,%rsi
     df6:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     dfa:	31 c0                	xor    %eax,%eax
     dfc:	0f 1f 40 00          	nopl   0x0(%rax)
     e00:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
     e07:	48 83 c0 10          	add    $0x10,%rax
     e0b:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
     e10:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
     e14:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
     e18:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
     e1c:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
     e20:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
     e24:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
      { return _M_insert(__n); }
     e28:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
     e2c:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
     e32:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
     e38:	75 c6                	jne    e00 <_Z17measure_sqrt_timeILy2EEvv+0xe00>
     e3a:	ff ca                	dec    %edx
	__ostream_insert(__out, __s,
     e3c:	75 bc                	jne    dfa <_Z17measure_sqrt_timeILy2EEvv+0xdfa>
     e3e:	e8 00 00 00 00       	callq  e43 <_Z17measure_sqrt_timeILy2EEvv+0xe43>
     e43:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # e4a <_Z17measure_sqrt_timeILy2EEvv+0xe4a>
     e4a:	41 b8 34 00 00 00    	mov    $0x34,%r8d
      { return _M_insert(__n); }
     e50:	48 8d 15 e8 00 00 00 	lea    0xe8(%rip),%rdx        # f3f <_Z17measure_sqrt_timeILy2EEvv+0xf3f>
     e57:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	__ostream_insert(__out, __s,
     e5b:	48 29 f0             	sub    %rsi,%rax
     e5e:	48 89 c3             	mov    %rax,%rbx
    { return flush(__os.put(__os.widen('\n'))); }
     e61:	e8 00 00 00 00       	callq  e66 <_Z17measure_sqrt_timeILy2EEvv+0xe66>
      { return __check_facet(_M_ctype).widen(__c); }
     e66:	49 8b 04 24          	mov    (%r12),%rax
     e6a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      if (!__f)
     e6e:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     e75:	00 
     e76:	48 85 f6             	test   %rsi,%rsi
     e79:	0f 84 16 f4 ff ff    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
     e7f:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     e83:	0f 84 10 03 00 00    	je     1199 <_Z17measure_sqrt_timeILy2EEvv+0x1199>
     e89:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    { return __os.flush(); }
     e8d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # e94 <_Z17measure_sqrt_timeILy2EEvv+0xe94>
     e94:	e8 00 00 00 00       	callq  e99 <_Z17measure_sqrt_timeILy2EEvv+0xe99>
	__ostream_insert(__out, __s,
     e99:	48 89 c1             	mov    %rax,%rcx
     e9c:	e8 00 00 00 00       	callq  ea1 <_Z17measure_sqrt_timeILy2EEvv+0xea1>
     ea1:	48 89 d8             	mov    %rbx,%rax
     ea4:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     eab:	9b c4 20 
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
     eae:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # eb5 <_Z17measure_sqrt_timeILy2EEvv+0xeb5>
     eb5:	48 c1 fb 3f          	sar    $0x3f,%rbx
     eb9:	48 f7 ea             	imul   %rdx
     ebc:	48 c1 fa 07          	sar    $0x7,%rdx
     ec0:	48 29 da             	sub    %rbx,%rdx
     ec3:	e8 00 00 00 00       	callq  ec8 <_Z17measure_sqrt_timeILy2EEvv+0xec8>
     ec8:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     ece:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # f09 <_Z17measure_sqrt_timeILy2EEvv+0xf09>
     ed5:	48 89 c6             	mov    %rax,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
     ed8:	48 89 c1             	mov    %rax,%rcx
      { return __check_facet(_M_ctype).widen(__c); }
     edb:	e8 00 00 00 00       	callq  ee0 <_Z17measure_sqrt_timeILy2EEvv+0xee0>
     ee0:	48 8b 06             	mov    (%rsi),%rax
     ee3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      if (!__f)
     ee7:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     eee:	00 
     eef:	48 85 db             	test   %rbx,%rbx
     ef2:	0f 84 9d f3 ff ff    	je     295 <_Z17measure_sqrt_timeILy2EEvv+0x295>
     ef8:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     efc:	0f 84 66 02 00 00    	je     1168 <_Z17measure_sqrt_timeILy2EEvv+0x1168>
     f02:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     f06:	48 89 f1             	mov    %rsi,%rcx
     f09:	e8 00 00 00 00       	callq  f0e <_Z17measure_sqrt_timeILy2EEvv+0xf0e>
     f0e:	90                   	nop
     f0f:	c5 f8 28 75 e0       	vmovaps -0x20(%rbp),%xmm6
    { return __os.flush(); }
     f14:	c5 f8 28 7d f0       	vmovaps -0x10(%rbp),%xmm7
     f19:	c5 78 28 45 00       	vmovaps 0x0(%rbp),%xmm8
     f1e:	48 89 c1             	mov    %rax,%rcx
       floats[i] = random_double();
     f21:	c5 78 28 4d 10       	vmovaps 0x10(%rbp),%xmm9
     f26:	c5 78 28 55 20       	vmovaps 0x20(%rbp),%xmm10
     f2b:	c5 78 28 5d 30       	vmovaps 0x30(%rbp),%xmm11
     f30:	c5 78 28 65 40       	vmovaps 0x40(%rbp),%xmm12
     f35:	c5 78 28 6d 50       	vmovaps 0x50(%rbp),%xmm13
    for (int i = 0; i < 4 * N; i++) {
     f3a:	c5 78 28 75 60       	vmovaps 0x60(%rbp),%xmm14
	__ostream_insert(__out, __s,
     f3f:	c5 78 28 7d 70       	vmovaps 0x70(%rbp),%xmm15
     f44:	48 8d a5 88 00 00 00 	lea    0x88(%rbp),%rsp
     f4b:	5b                   	pop    %rbx
     f4c:	5e                   	pop    %rsi
     f4d:	5f                   	pop    %rdi
     f4e:	41 5c                	pop    %r12
     f50:	41 5d                	pop    %r13
     f52:	41 5e                	pop    %r14
     f54:	41 5f                	pop    %r15
    { return flush(__os.put(__os.widen('\n'))); }
     f56:	5d                   	pop    %rbp
     f57:	e9 00 00 00 00       	jmpq   f5c <_Z17measure_sqrt_timeILy2EEvv+0xf5c>
     f5c:	0f 1f 40 00          	nopl   0x0(%rax)
      { return __check_facet(_M_ctype).widen(__c); }
     f60:	e8 00 00 00 00       	callq  f65 <_Z17measure_sqrt_timeILy2EEvv+0xf65>
     f65:	e9 f1 f2 ff ff       	jmpq   25b <_Z17measure_sqrt_timeILy2EEvv+0x25b>
     f6a:	e8 00 00 00 00       	callq  f6f <_Z17measure_sqrt_timeILy2EEvv+0xf6f>
      if (!__f)
     f6f:	e9 c3 f2 ff ff       	jmpq   237 <_Z17measure_sqrt_timeILy2EEvv+0x237>
     f74:	e8 00 00 00 00       	callq  f79 <_Z17measure_sqrt_timeILy2EEvv+0xf79>
     f79:	e9 95 f2 ff ff       	jmpq   213 <_Z17measure_sqrt_timeILy2EEvv+0x213>
     f7e:	48 89 d9             	mov    %rbx,%rcx
     f81:	e8 00 00 00 00       	callq  f86 <_Z17measure_sqrt_timeILy2EEvv+0xf86>
     f86:	48 8b 03             	mov    (%rbx),%rax
     f89:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # f90 <_Z17measure_sqrt_timeILy2EEvv+0xf90>
    { return __os.flush(); }
     f90:	ba 0a 00 00 00       	mov    $0xa,%edx
     f95:	48 8b 40 30          	mov    0x30(%rax),%rax
     f99:	48 39 c8             	cmp    %rcx,%rax
     f9c:	0f 84 8b f1 ff ff    	je     12d <_Z17measure_sqrt_timeILy2EEvv+0x12d>
     fa2:	48 89 d9             	mov    %rbx,%rcx
     fa5:	ff d0                	callq  *%rax
     fa7:	0f be d0             	movsbl %al,%edx
     faa:	e9 7e f1 ff ff       	jmpq   12d <_Z17measure_sqrt_timeILy2EEvv+0x12d>
     faf:	48 89 d9             	mov    %rbx,%rcx
     fb2:	e8 00 00 00 00       	callq  fb7 <_Z17measure_sqrt_timeILy2EEvv+0xfb7>
     fb7:	48 8b 03             	mov    (%rbx),%rax
     fba:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # fc1 <_Z17measure_sqrt_timeILy2EEvv+0xfc1>
          roots[i + k] = sqrt(floats[i + k]);
     fc1:	ba 0a 00 00 00       	mov    $0xa,%edx
     fc6:	48 8b 40 30          	mov    0x30(%rax),%rax
     fca:	48 39 c8             	cmp    %rcx,%rax
     fcd:	0f 84 e2 f0 ff ff    	je     b5 <_Z17measure_sqrt_timeILy2EEvv+0xb5>
     fd3:	48 89 d9             	mov    %rbx,%rcx
     fd6:	ff d0                	callq  *%rax
     fd8:	0f be d0             	movsbl %al,%edx
     fdb:	e9 d5 f0 ff ff       	jmpq   b5 <_Z17measure_sqrt_timeILy2EEvv+0xb5>
     fe0:	48 89 d9             	mov    %rbx,%rcx
     fe3:	e8 00 00 00 00       	callq  fe8 <_Z17measure_sqrt_timeILy2EEvv+0xfe8>
     fe8:	48 8b 03             	mov    (%rbx),%rax
     feb:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ff2 <_Z17measure_sqrt_timeILy2EEvv+0xff2>
     ff2:	ba 0a 00 00 00       	mov    $0xa,%edx
     ff7:	48 8b 40 30          	mov    0x30(%rax),%rax
     ffb:	48 39 c8             	cmp    %rcx,%rax
     ffe:	0f 84 af f1 ff ff    	je     1b3 <_Z17measure_sqrt_timeILy2EEvv+0x1b3>
    1004:	48 89 d9             	mov    %rbx,%rcx
    1007:	ff d0                	callq  *%rax
    1009:	0f be d0             	movsbl %al,%edx
    100c:	e9 a2 f1 ff ff       	jmpq   1b3 <_Z17measure_sqrt_timeILy2EEvv+0x1b3>
    1011:	48 89 f1             	mov    %rsi,%rcx
    1014:	e8 00 00 00 00       	callq  1019 <_Z17measure_sqrt_timeILy2EEvv+0x1019>
    1019:	48 8b 06             	mov    (%rsi),%rax
    101c:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1023 <_Z17measure_sqrt_timeILy2EEvv+0x1023>
    1023:	ba 0a 00 00 00       	mov    $0xa,%edx
    1028:	48 8b 40 30          	mov    0x30(%rax),%rax
    102c:	48 39 c8             	cmp    %rcx,%rax
    102f:	0f 84 31 f3 ff ff    	je     366 <_Z17measure_sqrt_timeILy2EEvv+0x366>
    1035:	48 89 f1             	mov    %rsi,%rcx
    1038:	ff d0                	callq  *%rax
    103a:	0f be d0             	movsbl %al,%edx
    103d:	e9 24 f3 ff ff       	jmpq   366 <_Z17measure_sqrt_timeILy2EEvv+0x366>
      for (int i = 0; i < 4 * N; i += 4) {
    1042:	48 89 f1             	mov    %rsi,%rcx
          roots[i + k] = sqrt(floats[i + k]);
    1045:	e8 00 00 00 00       	callq  104a <_Z17measure_sqrt_timeILy2EEvv+0x104a>
    104a:	48 8b 06             	mov    (%rsi),%rax
    104d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1054 <_Z17measure_sqrt_timeILy2EEvv+0x1054>
    1054:	ba 0a 00 00 00       	mov    $0xa,%edx
    1059:	48 8b 40 30          	mov    0x30(%rax),%rax
    105d:	48 39 c8             	cmp    %rcx,%rax
    1060:	0f 84 3b f4 ff ff    	je     4a1 <_Z17measure_sqrt_timeILy2EEvv+0x4a1>
	__throw_bad_cast();
    1066:	48 89 f1             	mov    %rsi,%rcx
    1069:	ff d0                	callq  *%rax
    106b:	0f be d0             	movsbl %al,%edx
    106e:	e9 2e f4 ff ff       	jmpq   4a1 <_Z17measure_sqrt_timeILy2EEvv+0x4a1>
    for (int j = 0; j < LOOP; j++) {
    1073:	48 89 d9             	mov    %rbx,%rcx
    1076:	e8 00 00 00 00       	callq  107b <_Z17measure_sqrt_timeILy2EEvv+0x107b>
       end = steady_clock::now();
    107b:	48 8b 03             	mov    (%rbx),%rax
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    107e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1085 <_Z17measure_sqrt_timeILy2EEvv+0x1085>
    1085:	ba 0a 00 00 00       	mov    $0xa,%edx
    108a:	48 8b 40 30          	mov    0x30(%rax),%rax
    108e:	48 39 c8             	cmp    %rcx,%rax
    1091:	0f 84 10 f6 ff ff    	je     6a7 <_Z17measure_sqrt_timeILy2EEvv+0x6a7>
    1097:	48 89 d9             	mov    %rbx,%rcx
    109a:	ff d0                	callq  *%rax
    109c:	0f be d0             	movsbl %al,%edx
    109f:	e9 03 f6 ff ff       	jmpq   6a7 <_Z17measure_sqrt_timeILy2EEvv+0x6a7>
      { return _M_insert(__n); }
    10a4:	48 89 d9             	mov    %rbx,%rcx
    10a7:	e8 00 00 00 00       	callq  10ac <_Z17measure_sqrt_timeILy2EEvv+0x10ac>
	__ostream_insert(__out, __s,
    10ac:	48 8b 03             	mov    (%rbx),%rax
    10af:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 10b6 <_Z17measure_sqrt_timeILy2EEvv+0x10b6>
    10b6:	ba 0a 00 00 00       	mov    $0xa,%edx
      { return _M_insert(__n); }
    10bb:	48 8b 40 30          	mov    0x30(%rax),%rax
	__ostream_insert(__out, __s,
    10bf:	48 39 c8             	cmp    %rcx,%rax
    10c2:	0f 84 11 fd ff ff    	je     dd9 <_Z17measure_sqrt_timeILy2EEvv+0xdd9>
      { return __check_facet(_M_ctype).widen(__c); }
    10c8:	48 89 d9             	mov    %rbx,%rcx
    10cb:	ff d0                	callq  *%rax
    10cd:	0f be d0             	movsbl %al,%edx
    10d0:	e9 04 fd ff ff       	jmpq   dd9 <_Z17measure_sqrt_timeILy2EEvv+0xdd9>
      if (!__f)
    10d5:	48 89 f1             	mov    %rsi,%rcx
    10d8:	e8 00 00 00 00       	callq  10dd <_Z17measure_sqrt_timeILy2EEvv+0x10dd>
    10dd:	48 8b 06             	mov    (%rsi),%rax
    10e0:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 10e7 <_Z17measure_sqrt_timeILy2EEvv+0x10e7>
    { return flush(__os.put(__os.widen('\n'))); }
    10e7:	ba 0a 00 00 00       	mov    $0xa,%edx
    10ec:	48 8b 40 30          	mov    0x30(%rax),%rax
    { return __os.flush(); }
    10f0:	48 39 c8             	cmp    %rcx,%rax
    10f3:	0f 84 58 f3 ff ff    	je     451 <_Z17measure_sqrt_timeILy2EEvv+0x451>
	__ostream_insert(__out, __s,
    10f9:	48 89 f1             	mov    %rsi,%rcx
    10fc:	ff d0                	callq  *%rax
    10fe:	0f be d0             	movsbl %al,%edx
    1101:	e9 4b f3 ff ff       	jmpq   451 <_Z17measure_sqrt_timeILy2EEvv+0x451>
    1106:	48 89 d9             	mov    %rbx,%rcx
    1109:	e8 00 00 00 00       	callq  110e <_Z17measure_sqrt_timeILy2EEvv+0x110e>
    110e:	48 8b 03             	mov    (%rbx),%rax
    { return flush(__os.put(__os.widen('\n'))); }
    1111:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1118 <_Z17measure_sqrt_timeILy2EEvv+0x1118>
      { return __check_facet(_M_ctype).widen(__c); }
    1118:	ba 0a 00 00 00       	mov    $0xa,%edx
    111d:	48 8b 40 30          	mov    0x30(%rax),%rax
      if (!__f)
    1121:	48 39 c8             	cmp    %rcx,%rax
    1124:	0f 84 2d f5 ff ff    	je     657 <_Z17measure_sqrt_timeILy2EEvv+0x657>
    112a:	48 89 d9             	mov    %rbx,%rcx
    112d:	ff d0                	callq  *%rax
    112f:	0f be d0             	movsbl %al,%edx
    1132:	e9 20 f5 ff ff       	jmpq   657 <_Z17measure_sqrt_timeILy2EEvv+0x657>
    1137:	48 89 f1             	mov    %rsi,%rcx
    113a:	e8 00 00 00 00       	callq  113f <_Z17measure_sqrt_timeILy2EEvv+0x113f>
    113f:	48 8b 06             	mov    (%rsi),%rax
    { return __os.flush(); }
    1142:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1149 <_Z17measure_sqrt_timeILy2EEvv+0x1149>
    1149:	ba 0a 00 00 00       	mov    $0xa,%edx
       start = steady_clock::now();
    114e:	48 8b 40 30          	mov    0x30(%rax),%rax
    1152:	48 39 c8             	cmp    %rcx,%rax
    1155:	0f 84 bb f1 ff ff    	je     316 <_Z17measure_sqrt_timeILy2EEvv+0x316>
    115b:	48 89 f1             	mov    %rsi,%rcx
    115e:	ff d0                	callq  *%rax
    1160:	0f be d0             	movsbl %al,%edx
    1163:	e9 ae f1 ff ff       	jmpq   316 <_Z17measure_sqrt_timeILy2EEvv+0x316>
    1168:	48 89 d9             	mov    %rbx,%rcx
    116b:	e8 00 00 00 00       	callq  1170 <_Z17measure_sqrt_timeILy2EEvv+0x1170>
    1170:	48 8b 03             	mov    (%rbx),%rax
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    1173:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 117a <_Z17measure_sqrt_timeILy2EEvv+0x117a>
    117a:	ba 0a 00 00 00       	mov    $0xa,%edx
    117f:	48 8b 40 30          	mov    0x30(%rax),%rax
    1183:	48 39 c8             	cmp    %rcx,%rax
    root = 0.5 * (root + (* a / root));
    1186:	0f 84 7a fd ff ff    	je     f06 <_Z17measure_sqrt_timeILy2EEvv+0xf06>
    118c:	48 89 d9             	mov    %rbx,%rcx
    118f:	ff d0                	callq  *%rax
    1191:	0f be d0             	movsbl %al,%edx
    1194:	e9 6d fd ff ff       	jmpq   f06 <_Z17measure_sqrt_timeILy2EEvv+0xf06>
    1199:	48 89 f1             	mov    %rsi,%rcx
    119c:	e8 00 00 00 00       	callq  11a1 <_Z17measure_sqrt_timeILy2EEvv+0x11a1>
        roots[i] = sqrt1<LOOPS>(floats + i);
    11a1:	48 8b 06             	mov    (%rsi),%rax
    11a4:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 11ab <_Z17measure_sqrt_timeILy2EEvv+0x11ab>
    11ab:	ba 0a 00 00 00       	mov    $0xa,%edx
       end = steady_clock::now();
    11b0:	48 8b 40 30          	mov    0x30(%rax),%rax
    11b4:	48 39 c8             	cmp    %rcx,%rax
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    11b7:	0f 84 d0 fc ff ff    	je     e8d <_Z17measure_sqrt_timeILy2EEvv+0xe8d>
    11bd:	48 89 f1             	mov    %rsi,%rcx
    11c0:	ff d0                	callq  *%rax
    11c2:	0f be d0             	movsbl %al,%edx
    11c5:	e9 c3 fc ff ff       	jmpq   e8d <_Z17measure_sqrt_timeILy2EEvv+0xe8d>
    11ca:	90                   	nop
    11cb:	90                   	nop
    11cc:	90                   	nop
    11cd:	90                   	nop
    11ce:	90                   	nop
    11cf:	90                   	nop

Disassembly of section .text$_Z17measure_sqrt_timeILy3EEvv:

0000000000000000 <_Z17measure_sqrt_timeILy3EEvv>:
       0:	55                   	push   %rbp
       1:	41 57                	push   %r15
       3:	41 56                	push   %r14
       5:	41 55                	push   %r13
       7:	41 54                	push   %r12
       9:	57                   	push   %rdi
       a:	56                   	push   %rsi
       b:	53                   	push   %rbx
       c:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
{
      13:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
      1a:	00 
      1b:	c5 f8 29 75 e0       	vmovaps %xmm6,-0x20(%rbp)
  static std::random_device device;
      20:	c5 f8 29 7d f0       	vmovaps %xmm7,-0x10(%rbp)
      25:	c5 78 29 45 00       	vmovaps %xmm8,0x0(%rbp)
      2a:	c5 78 29 4d 10       	vmovaps %xmm9,0x10(%rbp)
      2f:	c5 78 29 55 20       	vmovaps %xmm10,0x20(%rbp)
      34:	c5 78 29 5d 30       	vmovaps %xmm11,0x30(%rbp)
      39:	c5 78 29 65 40       	vmovaps %xmm12,0x40(%rbp)
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
      3e:	c5 78 29 6d 50       	vmovaps %xmm13,0x50(%rbp)
      43:	c5 78 29 75 60       	vmovaps %xmm14,0x60(%rbp)
      return this->_M_getval_pretr1();
      48:	c5 78 29 7d 70       	vmovaps %xmm15,0x70(%rbp)
      4d:	b8 80 6a 18 00       	mov    $0x186a80,%eax
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
      52:	e8 00 00 00 00       	callq  57 <_Z17measure_sqrt_timeILy3EEvv+0x57>
      57:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 5e <_Z17measure_sqrt_timeILy3EEvv+0x5e>
      5e:	ba 03 00 00 00       	mov    $0x3,%edx
      63:	48 29 c4             	sub    %rax,%rsp
      66:	e8 00 00 00 00       	callq  6b <_Z17measure_sqrt_timeILy3EEvv+0x6b>
      6b:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      71:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 78 <_Z17measure_sqrt_timeILy3EEvv+0x78>
      78:	48 8d bc 24 9f 00 00 	lea    0x9f(%rsp),%rdi
      7f:	00 
      80:	48 89 c6             	mov    %rax,%rsi
      83:	48 89 c1             	mov    %rax,%rcx
      __ret = __sum / __tmp;
      86:	48 83 e7 80          	and    $0xffffffffffffff80,%rdi
      8a:	e8 00 00 00 00       	callq  8f <_Z17measure_sqrt_timeILy3EEvv+0x8f>
      if (__builtin_expect(__ret >= _RealType(1), 0))
      8f:	48 8b 06             	mov    (%rsi),%rax
      92:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      96:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      9d:	00 
      9e:	48 85 db             	test   %rbx,%rbx
      a1:	0f 84 e5 01 00 00    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
      a7:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
}
      ab:	0f 84 be 10 00 00    	je     116f <_Z17measure_sqrt_timeILy3EEvv+0x116f>
      b1:	0f be 53 43          	movsbl 0x43(%rbx),%edx
      b5:	48 89 f1             	mov    %rsi,%rcx
      b8:	e8 00 00 00 00       	callq  bd <_Z17measure_sqrt_timeILy3EEvv+0xbd>
      bd:	48 89 c1             	mov    %rax,%rcx
      c0:	e8 00 00 00 00       	callq  c5 <_Z17measure_sqrt_timeILy3EEvv+0xc5>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
      c5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cc <_Z17measure_sqrt_timeILy3EEvv+0xcc>
      cc:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      d2:	48 8d 15 0c 00 00 00 	lea    0xc(%rip),%rdx        # e5 <_Z17measure_sqrt_timeILy3EEvv+0xe5>
	: _M_a(__a), _M_b(__b)
      d9:	e8 00 00 00 00       	callq  de <_Z17measure_sqrt_timeILy3EEvv+0xde>
      de:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # e5 <_Z17measure_sqrt_timeILy3EEvv+0xe5>
      e5:	ba 40 0d 03 00       	mov    $0x30d40,%edx
      ea:	e8 00 00 00 00       	callq  ef <_Z17measure_sqrt_timeILy3EEvv+0xef>
      ef:	41 b8 11 00 00 00    	mov    $0x11,%r8d
      f5:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # 114 <_Z17measure_sqrt_timeILy3EEvv+0x114>
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
      fc:	48 89 c6             	mov    %rax,%rsi
      ff:	48 89 c1             	mov    %rax,%rcx
     102:	e8 00 00 00 00       	callq  107 <_Z17measure_sqrt_timeILy3EEvv+0x107>
    { _M_init_pretr1(__token); }
     107:	48 8b 06             	mov    (%rsi),%rax
      { _M_string_length = __length; }
     10a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     10e:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     115:	00 
	: allocator_type(__a), _M_p(__dat) { }
     116:	48 85 db             	test   %rbx,%rbx
     119:	0f 84 6d 01 00 00    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     11f:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     123:	0f 84 15 10 00 00    	je     113e <_Z17measure_sqrt_timeILy3EEvv+0x113e>
      { __c1 = __c2; }
     129:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     12d:	48 89 f1             	mov    %rsi,%rcx
     130:	4c 8d af 00 35 0c 00 	lea    0xc3500(%rdi),%r13
  static std::random_device device;
     137:	48 8d 9f 00 6a 18 00 	lea    0x186a00(%rdi),%rbx
     13e:	e8 00 00 00 00       	callq  143 <_Z17measure_sqrt_timeILy3EEvv+0x143>
     143:	4d 89 ee             	mov    %r13,%r14
     146:	48 89 c1             	mov    %rax,%rcx
	if (!_M_is_local())
     149:	e8 00 00 00 00       	callq  14e <_Z17measure_sqrt_timeILy3EEvv+0x14e>
     14e:	e8 10 00 00 00       	callq  163 <_Z17measure_sqrt_timeILy3EEvv+0x163>
     153:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     157:	49 83 c6 04          	add    $0x4,%r14
     15b:	c5 e3 5a d8          	vcvtsd2ss %xmm0,%xmm3,%xmm3
     15f:	c4 c1 7a 11 5e fc    	vmovss %xmm3,-0x4(%r14)
	  __ret = std::nextafter(_RealType(1), _RealType(0));
     165:	49 39 de             	cmp    %rbx,%r14
     168:	75 e4                	jne    14e <_Z17measure_sqrt_timeILy3EEvv+0x14e>
     16a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 171 <_Z17measure_sqrt_timeILy3EEvv+0x171>
     171:	41 b8 09 00 00 00    	mov    $0x9,%r8d
     177:	48 8d 15 2a 00 00 00 	lea    0x2a(%rip),%rdx        # 1a8 <_Z17measure_sqrt_timeILy3EEvv+0x1a8>
     17e:	e8 00 00 00 00       	callq  183 <_Z17measure_sqrt_timeILy3EEvv+0x183>
     183:	4c 8b 25 00 00 00 00 	mov    0x0(%rip),%r12        # 18a <_Z17measure_sqrt_timeILy3EEvv+0x18a>
     18a:	49 8b 04 24          	mov    (%r12),%rax
     18e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     192:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     199:	00 
     19a:	48 85 db             	test   %rbx,%rbx
     19d:	0f 84 e9 00 00 00    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     1a3:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     1a7:	0f 84 f3 0f 00 00    	je     11a0 <_Z17measure_sqrt_timeILy3EEvv+0x11a0>
     1ad:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     1b1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1b8 <_Z17measure_sqrt_timeILy3EEvv+0x1b8>
     1b8:	e8 00 00 00 00       	callq  1bd <_Z17measure_sqrt_timeILy3EEvv+0x1bd>
     1bd:	48 89 c1             	mov    %rax,%rcx
     1c0:	e8 00 00 00 00       	callq  1c5 <_Z17measure_sqrt_timeILy3EEvv+0x1c5>
     1c5:	e8 00 00 00 00       	callq  1ca <_Z17measure_sqrt_timeILy3EEvv+0x1ca>
     1ca:	c7 45 bc e8 03 00 00 	movl   $0x3e8,-0x44(%rbp)
     1d1:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
     1d5:	49 89 c7             	mov    %rax,%r15
     1d8:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     1dc:	48 89 fe             	mov    %rdi,%rsi
     1df:	4c 89 eb             	mov    %r13,%rbx
     1e2:	e9 85 00 00 00       	jmpq   26c <_Z17measure_sqrt_timeILy3EEvv+0x26c>
     1e7:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     1eb:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     1ef:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
void measure_sqrt_time(void) {
     1f4:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     1f8:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     1fc:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     200:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
     204:	0f 87 2a 0f 00 00    	ja     1134 <_Z17measure_sqrt_timeILy3EEvv+0x1134>
     20a:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     20e:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     212:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
     217:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     21b:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     21f:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     223:	c5 fa 11 5e 04       	vmovss %xmm3,0x4(%rsi)
     228:	0f 87 fc 0e 00 00    	ja     112a <_Z17measure_sqrt_timeILy3EEvv+0x112a>
     22e:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     232:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     236:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
     23b:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     23f:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     243:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
      { return _M_insert(__n); }
     247:	c5 fa 11 5e 08       	vmovss %xmm3,0x8(%rsi)
     24c:	0f 87 ce 0e 00 00    	ja     1120 <_Z17measure_sqrt_timeILy3EEvv+0x1120>
     252:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     256:	48 83 c3 10          	add    $0x10,%rbx
     25a:	48 83 c6 10          	add    $0x10,%rsi
	__ostream_insert(__out, __s,
     25e:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
     262:	c5 fa 11 6e fc       	vmovss %xmm5,-0x4(%rsi)
     267:	4c 39 f3             	cmp    %r14,%rbx
     26a:	74 25                	je     291 <_Z17measure_sqrt_timeILy3EEvv+0x291>
     26c:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
      { return _M_insert(__n); }
     270:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
	__ostream_insert(__out, __s,
     274:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     278:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     27c:	0f 86 65 ff ff ff    	jbe    1e7 <_Z17measure_sqrt_timeILy3EEvv+0x1e7>
      { return __check_facet(_M_ctype).widen(__c); }
     282:	e8 00 00 00 00       	callq  287 <_Z17measure_sqrt_timeILy3EEvv+0x287>
     287:	e9 5b ff ff ff       	jmpq   1e7 <_Z17measure_sqrt_timeILy3EEvv+0x1e7>
     28c:	e8 00 00 00 00       	callq  291 <_Z17measure_sqrt_timeILy3EEvv+0x291>
      if (!__f)
     291:	ff 4d bc             	decl   -0x44(%rbp)
     294:	0f 85 42 ff ff ff    	jne    1dc <_Z17measure_sqrt_timeILy3EEvv+0x1dc>
     29a:	e8 00 00 00 00       	callq  29f <_Z17measure_sqrt_timeILy3EEvv+0x29f>
     29f:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     2a6:	9b c4 20 
    { return flush(__os.put(__os.widen('\n'))); }
     2a9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    { return __os.flush(); }
     2ad:	4c 29 f8             	sub    %r15,%rax
     2b0:	48 89 c1             	mov    %rax,%rcx
     2b3:	48 f7 ea             	imul   %rdx
	__ostream_insert(__out, __s,
     2b6:	48 c1 f9 3f          	sar    $0x3f,%rcx
     2ba:	48 c1 fa 07          	sar    $0x7,%rdx
     2be:	48 29 ca             	sub    %rcx,%rdx
     2c1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2c8 <_Z17measure_sqrt_timeILy3EEvv+0x2c8>
     2c8:	e8 00 00 00 00       	callq  2cd <_Z17measure_sqrt_timeILy3EEvv+0x2cd>
     2cd:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
     2d3:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 30e <_Z17measure_sqrt_timeILy3EEvv+0x30e>
     2da:	49 89 c6             	mov    %rax,%r14
     2dd:	48 89 c1             	mov    %rax,%rcx
     2e0:	e8 00 00 00 00       	callq  2e5 <_Z17measure_sqrt_timeILy3EEvv+0x2e5>
     2e5:	49 8b 06             	mov    (%r14),%rax
     2e8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     2ec:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
     2f3:	00 
     2f4:	48 85 f6             	test   %rsi,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
     2f7:	74 93                	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     2f9:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
      { return __check_facet(_M_ctype).widen(__c); }
     2fd:	0f 84 f4 0f 00 00    	je     12f7 <_Z17measure_sqrt_timeILy3EEvv+0x12f7>
     303:	0f be 56 43          	movsbl 0x43(%rsi),%edx
      if (!__f)
     307:	4c 89 f1             	mov    %r14,%rcx
     30a:	e8 00 00 00 00       	callq  30f <_Z17measure_sqrt_timeILy3EEvv+0x30f>
     30f:	48 89 c1             	mov    %rax,%rcx
     312:	e8 00 00 00 00       	callq  317 <_Z17measure_sqrt_timeILy3EEvv+0x317>
     317:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 31e <_Z17measure_sqrt_timeILy3EEvv+0x31e>
     31e:	41 b8 37 00 00 00    	mov    $0x37,%r8d
     324:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 36b <_Z17measure_sqrt_timeILy3EEvv+0x36b>
     32b:	e8 00 00 00 00       	callq  330 <_Z17measure_sqrt_timeILy3EEvv+0x330>
     330:	49 8b 04 24          	mov    (%r12),%rax
    { return __os.flush(); }
     334:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     338:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     33f:	00 
       floats[i] = random_double();
     340:	48 85 f6             	test   %rsi,%rsi
     343:	0f 84 43 ff ff ff    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     349:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     34d:	0f 84 7e 0e 00 00    	je     11d1 <_Z17measure_sqrt_timeILy3EEvv+0x11d1>
     353:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    for (int i = 0; i < 4 * N; i++) {
     357:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 35e <_Z17measure_sqrt_timeILy3EEvv+0x35e>
	__ostream_insert(__out, __s,
     35e:	e8 00 00 00 00       	callq  363 <_Z17measure_sqrt_timeILy3EEvv+0x363>
     363:	48 89 c1             	mov    %rax,%rcx
     366:	e8 00 00 00 00       	callq  36b <_Z17measure_sqrt_timeILy3EEvv+0x36b>
     36b:	e8 00 00 00 00       	callq  370 <_Z17measure_sqrt_timeILy3EEvv+0x370>
     370:	ba e8 03 00 00       	mov    $0x3e8,%edx
    { return flush(__os.put(__os.widen('\n'))); }
     375:	c5 f8 28 3d 50 01 00 	vmovaps 0x150(%rip),%xmm7        # 4cd <_Z17measure_sqrt_timeILy3EEvv+0x4cd>
     37c:	00 
     37d:	c5 f8 28 35 60 01 00 	vmovaps 0x160(%rip),%xmm6        # 4e5 <_Z17measure_sqrt_timeILy3EEvv+0x4e5>
     384:	00 
      { return __check_facet(_M_ctype).widen(__c); }
     385:	48 89 c6             	mov    %rax,%rsi
     388:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
      if (!__f)
     38c:	31 c0                	xor    %eax,%eax
     38e:	66 90                	xchg   %ax,%ax
     390:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
     397:	48 83 c0 10          	add    $0x10,%rax
     39b:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
     3a0:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
     3a4:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
     3a8:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
     3ac:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
    { return __os.flush(); }
     3b0:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
     3b4:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
       start = steady_clock::now();
     3b8:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
     3bc:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
     3c0:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
     3c4:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
     3c8:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
     3ce:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
     3d4:	75 ba                	jne    390 <_Z17measure_sqrt_timeILy3EEvv+0x390>
     3d6:	ff ca                	dec    %edx
     3d8:	75 b2                	jne    38c <_Z17measure_sqrt_timeILy3EEvv+0x38c>
     3da:	e8 00 00 00 00       	callq  3df <_Z17measure_sqrt_timeILy3EEvv+0x3df>
     3df:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     3e6:	9b c4 20 
          roots[i + k] = sqrt(floats[i + k]);
     3e9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     3ed:	48 29 f0             	sub    %rsi,%rax
     3f0:	48 89 c1             	mov    %rax,%rcx
     3f3:	48 f7 ea             	imul   %rdx
     3f6:	48 c1 f9 3f          	sar    $0x3f,%rcx
     3fa:	48 c1 fa 07          	sar    $0x7,%rdx
     3fe:	48 29 ca             	sub    %rcx,%rdx
     401:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 408 <_Z17measure_sqrt_timeILy3EEvv+0x408>
     408:	e8 00 00 00 00       	callq  40d <_Z17measure_sqrt_timeILy3EEvv+0x40d>
     40d:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     413:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 44e <_Z17measure_sqrt_timeILy3EEvv+0x44e>
     41a:	49 89 c6             	mov    %rax,%r14
     41d:	48 89 c1             	mov    %rax,%rcx
     420:	e8 00 00 00 00       	callq  425 <_Z17measure_sqrt_timeILy3EEvv+0x425>
     425:	49 8b 06             	mov    (%r14),%rax
     428:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     42c:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
     433:	00 
     434:	48 85 f6             	test   %rsi,%rsi
     437:	0f 84 4f fe ff ff    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     43d:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     441:	0f 84 4e 0e 00 00    	je     1295 <_Z17measure_sqrt_timeILy3EEvv+0x1295>
     447:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     44b:	4c 89 f1             	mov    %r14,%rcx
     44e:	e8 00 00 00 00       	callq  453 <_Z17measure_sqrt_timeILy3EEvv+0x453>
     453:	48 89 c1             	mov    %rax,%rcx
     456:	e8 00 00 00 00       	callq  45b <_Z17measure_sqrt_timeILy3EEvv+0x45b>
     45b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 462 <_Z17measure_sqrt_timeILy3EEvv+0x462>
      for (int i = 0; i < 4 * N; i += 4) {
     462:	41 b8 39 00 00 00    	mov    $0x39,%r8d
          roots[i + k] = sqrt(floats[i + k]);
     468:	48 8d 15 78 00 00 00 	lea    0x78(%rip),%rdx        # 4e7 <_Z17measure_sqrt_timeILy3EEvv+0x4e7>
     46f:	e8 00 00 00 00       	callq  474 <_Z17measure_sqrt_timeILy3EEvv+0x474>
     474:	49 8b 04 24          	mov    (%r12),%rax
     478:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     47c:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     483:	00 
     484:	48 85 f6             	test   %rsi,%rsi
	__throw_bad_cast();
     487:	0f 84 ff fd ff ff    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     48d:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    for (int j = 0; j < LOOP; j++) {
     491:	0f 84 6b 0d 00 00    	je     1202 <_Z17measure_sqrt_timeILy3EEvv+0x1202>
     497:	0f be 56 43          	movsbl 0x43(%rsi),%edx
       end = steady_clock::now();
     49b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 4a2 <_Z17measure_sqrt_timeILy3EEvv+0x4a2>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     4a2:	e8 00 00 00 00       	callq  4a7 <_Z17measure_sqrt_timeILy3EEvv+0x4a7>
     4a7:	48 89 c1             	mov    %rax,%rcx
     4aa:	e8 00 00 00 00       	callq  4af <_Z17measure_sqrt_timeILy3EEvv+0x4af>
     4af:	e8 00 00 00 00       	callq  4b4 <_Z17measure_sqrt_timeILy3EEvv+0x4b4>
     4b4:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     4b9:	48 89 c6             	mov    %rax,%rsi
     4bc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
      { return _M_insert(__n); }
     4c0:	48 89 fa             	mov    %rdi,%rdx
     4c3:	4c 89 e8             	mov    %r13,%rax
     4c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     4cd:	00 00 00 
	__ostream_insert(__out, __s,
     4d0:	c5 f8 28 20          	vmovaps (%rax),%xmm4
     4d4:	c5 f8 28 40 20       	vmovaps 0x20(%rax),%xmm0
      { return _M_insert(__n); }
     4d9:	48 83 c0 40          	add    $0x40,%rax
	__ostream_insert(__out, __s,
     4dd:	48 83 c2 40          	add    $0x40,%rdx
     4e1:	c5 d8 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm2
      { return __check_facet(_M_ctype).widen(__c); }
     4e7:	c5 f8 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm1
     4ed:	c5 d8 c6 60 d0 dd    	vshufps $0xdd,-0x30(%rax),%xmm4,%xmm4
      if (!__f)
     4f3:	c5 f8 c6 40 f0 dd    	vshufps $0xdd,-0x10(%rax),%xmm0,%xmm0
     4f9:	c5 e8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm2,%xmm3
     4fe:	c5 e8 c6 c9 dd       	vshufps $0xdd,%xmm1,%xmm2,%xmm1
     503:	c5 d8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm2
    { return flush(__os.put(__os.widen('\n'))); }
     508:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
     50d:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
    { return __os.flush(); }
     512:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
	__ostream_insert(__out, __s,
     516:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
     51a:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     51e:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
     522:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
     526:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     52a:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     52e:	c5 e0 5e dc          	vdivps %xmm4,%xmm3,%xmm3
    { return flush(__os.put(__os.widen('\n'))); }
     532:	c5 e0 58 dc          	vaddps %xmm4,%xmm3,%xmm3
      { return __check_facet(_M_ctype).widen(__c); }
     536:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
     53b:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
      if (!__f)
     53f:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
     543:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
     547:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     54b:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
     54f:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
     553:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     557:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     55b:	c5 e8 5e d4          	vdivps %xmm4,%xmm2,%xmm2
     55f:	c5 e8 58 d4          	vaddps %xmm4,%xmm2,%xmm2
    { return __os.flush(); }
     563:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
     568:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
       start = steady_clock::now();
     56c:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
     570:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
     574:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     578:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
     57c:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
     580:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     584:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     588:	c5 f0 5e cc          	vdivps %xmm4,%xmm1,%xmm1
     58c:	c5 f0 58 cc          	vaddps %xmm4,%xmm1,%xmm1
     590:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     595:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
     599:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
     59d:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
     5a1:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     5a5:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
    root = 0.5 * (root + (* a / root));
     5a9:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
     5ad:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     5b1:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     5b5:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
     5b9:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
     5bd:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     5c1:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
     5c5:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
     5c9:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
    for (int j = 0; j < LOOP; j++) {
     5cd:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
       end = steady_clock::now();
     5d1:	c5 d8 14 d3          	vunpcklps %xmm3,%xmm4,%xmm2
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     5d5:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
     5d9:	c5 f8 29 52 c0       	vmovaps %xmm2,-0x40(%rdx)
     5de:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
     5e2:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
     5e6:	c5 f8 29 62 d0       	vmovaps %xmm4,-0x30(%rdx)
     5eb:	c5 f8 29 52 e0       	vmovaps %xmm2,-0x20(%rdx)
     5f0:	c5 f8 29 4a f0       	vmovaps %xmm1,-0x10(%rdx)
     5f5:	48 39 d8             	cmp    %rbx,%rax
      { return _M_insert(__n); }
     5f8:	0f 85 d2 fe ff ff    	jne    4d0 <_Z17measure_sqrt_timeILy3EEvv+0x4d0>
     5fe:	ff c9                	dec    %ecx
     600:	0f 85 ba fe ff ff    	jne    4c0 <_Z17measure_sqrt_timeILy3EEvv+0x4c0>
	__ostream_insert(__out, __s,
     606:	e8 00 00 00 00       	callq  60b <_Z17measure_sqrt_timeILy3EEvv+0x60b>
     60b:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     612:	9b c4 20 
     615:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     619:	48 29 f0             	sub    %rsi,%rax
    { return flush(__os.put(__os.widen('\n'))); }
     61c:	48 89 c1             	mov    %rax,%rcx
      { return __check_facet(_M_ctype).widen(__c); }
     61f:	48 f7 ea             	imul   %rdx
     622:	48 c1 f9 3f          	sar    $0x3f,%rcx
     626:	48 c1 fa 07          	sar    $0x7,%rdx
      if (!__f)
     62a:	48 29 ca             	sub    %rcx,%rdx
     62d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 634 <_Z17measure_sqrt_timeILy3EEvv+0x634>
     634:	e8 00 00 00 00       	callq  639 <_Z17measure_sqrt_timeILy3EEvv+0x639>
     639:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     63f:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 67a <_Z17measure_sqrt_timeILy3EEvv+0x67a>
     646:	48 89 c6             	mov    %rax,%rsi
    { return __os.flush(); }
     649:	48 89 c1             	mov    %rax,%rcx
     64c:	e8 00 00 00 00       	callq  651 <_Z17measure_sqrt_timeILy3EEvv+0x651>
	__ostream_insert(__out, __s,
     651:	48 8b 06             	mov    (%rsi),%rax
     654:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     658:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     65f:	00 
     660:	48 85 db             	test   %rbx,%rbx
     663:	0f 84 23 fc ff ff    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     669:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    { return flush(__os.put(__os.widen('\n'))); }
     66d:	0f 84 53 0c 00 00    	je     12c6 <_Z17measure_sqrt_timeILy3EEvv+0x12c6>
      { return __check_facet(_M_ctype).widen(__c); }
     673:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     677:	48 89 f1             	mov    %rsi,%rcx
      if (!__f)
     67a:	e8 00 00 00 00       	callq  67f <_Z17measure_sqrt_timeILy3EEvv+0x67f>
     67f:	48 89 c1             	mov    %rax,%rcx
     682:	e8 00 00 00 00       	callq  687 <_Z17measure_sqrt_timeILy3EEvv+0x687>
     687:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 68e <_Z17measure_sqrt_timeILy3EEvv+0x68e>
     68e:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
     694:	48 8d 15 b8 00 00 00 	lea    0xb8(%rip),%rdx        # 753 <_Z17measure_sqrt_timeILy3EEvv+0x753>
     69b:	e8 00 00 00 00       	callq  6a0 <_Z17measure_sqrt_timeILy3EEvv+0x6a0>
    { return __os.flush(); }
     6a0:	49 8b 04 24          	mov    (%r12),%rax
     6a4:	48 8b 40 e8          	mov    -0x18(%rax),%rax
       start = steady_clock::now();
     6a8:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     6af:	00 
     6b0:	48 85 db             	test   %rbx,%rbx
     6b3:	0f 84 d3 fb ff ff    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     6b9:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     6bd:	0f 84 70 0b 00 00    	je     1233 <_Z17measure_sqrt_timeILy3EEvv+0x1233>
     6c3:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     6c7:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 6ce <_Z17measure_sqrt_timeILy3EEvv+0x6ce>
     6ce:	e8 00 00 00 00       	callq  6d3 <_Z17measure_sqrt_timeILy3EEvv+0x6d3>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     6d3:	48 89 c1             	mov    %rax,%rcx
     6d6:	e8 00 00 00 00       	callq  6db <_Z17measure_sqrt_timeILy3EEvv+0x6db>
     6db:	e8 00 00 00 00       	callq  6e0 <_Z17measure_sqrt_timeILy3EEvv+0x6e0>
     6e0:	41 b8 e8 03 00 00    	mov    $0x3e8,%r8d
     6e6:	4c 8d 8f 04 35 0c 00 	lea    0xc3504(%rdi),%r9
     6ed:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     6f1:	48 89 c3             	mov    %rax,%rbx
     6f4:	c5 fa 10 af c0 69 18 	vmovss 0x1869c0(%rdi),%xmm5
     6fb:	00 
     6fc:	b8 01 00 00 00       	mov    $0x1,%eax
     701:	c4 e2 7a f7 87 c0 69 	sarx   %eax,0x1869c0(%rdi),%eax
     708:	18 00 
     70a:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     70f:	48 8d 8f c4 69 18 00 	lea    0x1869c4(%rdi),%rcx
    root = 0.5 * (root + (* a / root));
     716:	89 45 bc             	mov    %eax,-0x44(%rbp)
     719:	b8 01 00 00 00       	mov    $0x1,%eax
     71e:	c4 e2 7a f7 87 c4 69 	sarx   %eax,0x1869c4(%rdi),%eax
     725:	18 00 
     727:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     72c:	c5 fa 10 45 bc       	vmovss -0x44(%rbp),%xmm0
     731:	89 45 bc             	mov    %eax,-0x44(%rbp)
    root = 0.5 * (root + (* a / root));
     734:	b8 01 00 00 00       	mov    $0x1,%eax
     739:	c4 e2 7a f7 87 c8 69 	sarx   %eax,0x1869c8(%rdi),%eax
     740:	18 00 
     742:	c5 fa 10 5d bc       	vmovss -0x44(%rbp),%xmm3
     747:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     74c:	89 45 bc             	mov    %eax,-0x44(%rbp)
     74f:	b8 01 00 00 00       	mov    $0x1,%eax
    root = 0.5 * (root + (* a / root));
     754:	c4 e2 7a f7 87 cc 69 	sarx   %eax,0x1869cc(%rdi),%eax
     75b:	18 00 
     75d:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     762:	c5 fa 10 55 bc       	vmovss -0x44(%rbp),%xmm2
     767:	89 45 bc             	mov    %eax,-0x44(%rbp)
     76a:	b8 01 00 00 00       	mov    $0x1,%eax
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     76f:	c4 e2 7a f7 87 d0 69 	sarx   %eax,0x1869d0(%rdi),%eax
     776:	18 00 
    root = 0.5 * (root + (* a / root));
     778:	c5 fa 10 4d bc       	vmovss -0x44(%rbp),%xmm1
     77d:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     782:	89 45 bc             	mov    %eax,-0x44(%rbp)
     785:	b8 01 00 00 00       	mov    $0x1,%eax
     78a:	c4 e2 7a f7 87 d4 69 	sarx   %eax,0x1869d4(%rdi),%eax
     791:	18 00 
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
     793:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     798:	c5 d2 5e e0          	vdivss %xmm0,%xmm5,%xmm4
     79c:	c5 fa 10 af c4 69 18 	vmovss 0x1869c4(%rdi),%xmm5
     7a3:	00 
     7a4:	c5 d2 5e eb          	vdivss %xmm3,%xmm5,%xmm5
     7a8:	c5 da 58 e0          	vaddss %xmm0,%xmm4,%xmm4
     7ac:	c5 fa 10 05 70 01 00 	vmovss 0x170(%rip),%xmm0        # 924 <_Z17measure_sqrt_timeILy3EEvv+0x924>
     7b3:	00 
     7b4:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     7b8:	c5 d2 58 db          	vaddss %xmm3,%xmm5,%xmm3
     7bc:	c5 fa 10 af c8 69 18 	vmovss 0x1869c8(%rdi),%xmm5
     7c3:	00 
     7c4:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     7c8:	c5 d2 5e ea          	vdivss %xmm2,%xmm5,%xmm5
     7cc:	c5 d2 58 d2          	vaddss %xmm2,%xmm5,%xmm2
    for (int j = 0; j < LOOP; j++) {
     7d0:	c5 fa 10 af cc 69 18 	vmovss 0x1869cc(%rdi),%xmm5
     7d7:	00 
       end = steady_clock::now();
     7d8:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     7dc:	c5 d2 5e e9          	vdivss %xmm1,%xmm5,%xmm5
     7e0:	c5 d2 58 c9          	vaddss %xmm1,%xmm5,%xmm1
     7e4:	c5 fa 10 af c0 69 18 	vmovss 0x1869c0(%rdi),%xmm5
     7eb:	00 
     7ec:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     7f0:	c5 d2 5e ec          	vdivss %xmm4,%xmm5,%xmm5
     7f4:	c5 d2 58 e4          	vaddss %xmm4,%xmm5,%xmm4
     7f8:	c5 da 59 e8          	vmulss %xmm0,%xmm4,%xmm5
     7fc:	c5 fa 10 a7 c4 69 18 	vmovss 0x1869c4(%rdi),%xmm4
     803:	00 
      { return _M_insert(__n); }
     804:	c5 fa 11 6d b4       	vmovss %xmm5,-0x4c(%rbp)
	__ostream_insert(__out, __s,
     809:	c5 da 5e e3          	vdivss %xmm3,%xmm4,%xmm4
     80d:	c5 da 58 db          	vaddss %xmm3,%xmm4,%xmm3
     811:	c5 fa 10 a7 c8 69 18 	vmovss 0x1869c8(%rdi),%xmm4
     818:	00 
     819:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     81d:	c5 fa 11 5d b0       	vmovss %xmm3,-0x50(%rbp)
    { return flush(__os.put(__os.widen('\n'))); }
     822:	c5 da 5e da          	vdivss %xmm2,%xmm4,%xmm3
      { return __check_facet(_M_ctype).widen(__c); }
     826:	c5 fa 10 a7 cc 69 18 	vmovss 0x1869cc(%rdi),%xmm4
     82d:	00 
     82e:	c5 e2 58 d2          	vaddss %xmm2,%xmm3,%xmm2
      if (!__f)
     832:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
     836:	c5 fa 11 55 ac       	vmovss %xmm2,-0x54(%rbp)
     83b:	c5 da 5e d1          	vdivss %xmm1,%xmm4,%xmm2
     83f:	c5 fa 10 65 bc       	vmovss -0x44(%rbp),%xmm4
     844:	89 45 bc             	mov    %eax,-0x44(%rbp)
     847:	b8 01 00 00 00       	mov    $0x1,%eax
     84c:	c5 fa 10 5d bc       	vmovss -0x44(%rbp),%xmm3
    { return __os.flush(); }
     851:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
     855:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
	__ostream_insert(__out, __s,
     859:	c5 fa 11 4d a8       	vmovss %xmm1,-0x58(%rbp)
     85e:	c4 e2 7a f7 87 d8 69 	sarx   %eax,0x1869d8(%rdi),%eax
     865:	18 00 
     867:	c5 7a 10 a7 d0 69 18 	vmovss 0x1869d0(%rdi),%xmm12
     86e:	00 
     86f:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
      { return __check_facet(_M_ctype).widen(__c); }
     874:	89 45 bc             	mov    %eax,-0x44(%rbp)
     877:	b8 01 00 00 00       	mov    $0x1,%eax
     87c:	c4 e2 7a f7 87 dc 69 	sarx   %eax,0x1869dc(%rdi),%eax
     883:	18 00 
      if (!__f)
     885:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     88a:	c5 fa 10 55 bc       	vmovss -0x44(%rbp),%xmm2
     88f:	89 45 bc             	mov    %eax,-0x44(%rbp)
     892:	b8 01 00 00 00       	mov    $0x1,%eax
    { return flush(__os.put(__os.widen('\n'))); }
     897:	c4 e2 7a f7 87 e0 69 	sarx   %eax,0x1869e0(%rdi),%eax
     89e:	18 00 
     8a0:	c5 fa 10 4d bc       	vmovss -0x44(%rbp),%xmm1
    { return __os.flush(); }
     8a5:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     8aa:	c5 7a 10 bf d0 69 18 	vmovss 0x1869d0(%rdi),%xmm15
     8b1:	00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     8b2:	89 45 b8             	mov    %eax,-0x48(%rbp)
     8b5:	b8 01 00 00 00       	mov    $0x1,%eax
     8ba:	c4 e2 7a f7 87 e4 69 	sarx   %eax,0x1869e4(%rdi),%eax
     8c1:	18 00 
       start = steady_clock::now();
     8c3:	c5 7a 10 55 b8       	vmovss -0x48(%rbp),%xmm10
     8c8:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     8cd:	89 45 b8             	mov    %eax,-0x48(%rbp)
     8d0:	b8 01 00 00 00       	mov    $0x1,%eax
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     8d5:	c4 e2 7a f7 87 e8 69 	sarx   %eax,0x1869e8(%rdi),%eax
     8dc:	18 00 
     8de:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     8e3:	c5 7a 10 4d b8       	vmovss -0x48(%rbp),%xmm9
     8e8:	89 45 b8             	mov    %eax,-0x48(%rbp)
     8eb:	b8 01 00 00 00       	mov    $0x1,%eax
     8f0:	c4 e2 7a f7 87 ec 69 	sarx   %eax,0x1869ec(%rdi),%eax
     8f7:	18 00 
     8f9:	c5 9a 5e ec          	vdivss %xmm4,%xmm12,%xmm5
     8fd:	c5 7a 10 a7 d4 69 18 	vmovss 0x1869d4(%rdi),%xmm12
     904:	00 
     905:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     90a:	c5 7a 10 45 b8       	vmovss -0x48(%rbp),%xmm8
     90f:	89 45 b8             	mov    %eax,-0x48(%rbp)
     912:	b8 01 00 00 00       	mov    $0x1,%eax
     917:	c5 d2 58 e4          	vaddss %xmm4,%xmm5,%xmm4
     91b:	c5 9a 5e eb          	vdivss %xmm3,%xmm12,%xmm5
     91f:	c5 7a 10 a7 d8 69 18 	vmovss 0x1869d8(%rdi),%xmm12
     926:	00 
     927:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     92b:	c5 d2 58 db          	vaddss %xmm3,%xmm5,%xmm3
     92f:	c5 9a 5e ea          	vdivss %xmm2,%xmm12,%xmm5
     933:	c5 7a 10 a7 dc 69 18 	vmovss 0x1869dc(%rdi),%xmm12
     93a:	00 
     93b:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     93f:	c5 d2 58 d2          	vaddss %xmm2,%xmm5,%xmm2
     943:	c5 9a 5e e9          	vdivss %xmm1,%xmm12,%xmm5
     947:	c5 7a 10 a7 d8 69 18 	vmovss 0x1869d8(%rdi),%xmm12
     94e:	00 
     94f:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
     953:	c5 d2 58 c9          	vaddss %xmm1,%xmm5,%xmm1
     957:	c5 82 5e ec          	vdivss %xmm4,%xmm15,%xmm5
     95b:	c5 7a 10 bf dc 69 18 	vmovss 0x1869dc(%rdi),%xmm15
     962:	00 
     963:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     967:	c5 d2 58 ec          	vaddss %xmm4,%xmm5,%xmm5
     96b:	c5 fa 10 a7 d4 69 18 	vmovss 0x1869d4(%rdi),%xmm4
     972:	00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     973:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     977:	c5 da 5e e3          	vdivss %xmm3,%xmm4,%xmm4
     97b:	c5 da 58 e3          	vaddss %xmm3,%xmm4,%xmm4
     97f:	c5 9a 5e da          	vdivss %xmm2,%xmm12,%xmm3
     983:	c5 7a 10 a7 e0 69 18 	vmovss 0x1869e0(%rdi),%xmm12
     98a:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     98b:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     98f:	c5 fa 11 65 bc       	vmovss %xmm4,-0x44(%rbp)
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     994:	c4 41 1a 5e da       	vdivss %xmm10,%xmm12,%xmm11
     999:	c5 e2 58 da          	vaddss %xmm2,%xmm3,%xmm3
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     99d:	c5 7a 10 a7 e8 69 18 	vmovss 0x1869e8(%rdi),%xmm12
     9a4:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     9a5:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     9a9:	c5 82 5e d1          	vdivss %xmm1,%xmm15,%xmm2
     9ad:	c5 7a 10 bf e4 69 18 	vmovss 0x1869e4(%rdi),%xmm15
     9b4:	00 
     9b5:	c4 41 22 58 d2       	vaddss %xmm10,%xmm11,%xmm10
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     9ba:	c5 2a 59 d0          	vmulss %xmm0,%xmm10,%xmm10
     9be:	c4 41 02 5e d9       	vdivss %xmm9,%xmm15,%xmm11
     9c3:	c5 ea 58 d1          	vaddss %xmm1,%xmm2,%xmm2
     9c7:	c5 7a 10 bf ec 69 18 	vmovss 0x1869ec(%rdi),%xmm15
     9ce:	00 
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     9cf:	c5 fa 10 4d b8       	vmovss -0x48(%rbp),%xmm1
     9d4:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     9d8:	c4 41 22 58 c9       	vaddss %xmm9,%xmm11,%xmm9
     9dd:	c4 41 1a 5e d8       	vdivss %xmm8,%xmm12,%xmm11
     9e2:	c5 7a 10 a7 e0 69 18 	vmovss 0x1869e0(%rdi),%xmm12
     9e9:	00 
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     9ea:	c5 32 59 c8          	vmulss %xmm0,%xmm9,%xmm9
     9ee:	c4 41 22 58 c0       	vaddss %xmm8,%xmm11,%xmm8
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     9f3:	c5 02 5e d9          	vdivss %xmm1,%xmm15,%xmm11
     9f7:	c5 7a 10 bf e4 69 18 	vmovss 0x1869e4(%rdi),%xmm15
     9fe:	00 
     9ff:	c4 e2 7a f7 87 f0 69 	sarx   %eax,0x1869f0(%rdi),%eax
     a06:	18 00 
     a08:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a0d:	c5 7a 10 af f0 69 18 	vmovss 0x1869f0(%rdi),%xmm13
     a14:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a15:	89 45 b8             	mov    %eax,-0x48(%rbp)
     a18:	b8 01 00 00 00       	mov    $0x1,%eax
     a1d:	c4 e2 7a f7 87 f4 69 	sarx   %eax,0x1869f4(%rdi),%eax
     a24:	18 00 
     a26:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     a2b:	c5 3a 59 c0          	vmulss %xmm0,%xmm8,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a2f:	c5 a2 58 c9          	vaddss %xmm1,%xmm11,%xmm1
     a33:	c4 41 1a 5e da       	vdivss %xmm10,%xmm12,%xmm11
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a38:	c5 7a 10 a7 e8 69 18 	vmovss 0x1869e8(%rdi),%xmm12
     a3f:	00 
     a40:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     a44:	c4 41 22 58 da       	vaddss %xmm10,%xmm11,%xmm11
     a49:	c4 41 02 5e d1       	vdivss %xmm9,%xmm15,%xmm10
     a4e:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
     a52:	c4 41 2a 58 d1       	vaddss %xmm9,%xmm10,%xmm10
     a57:	c4 41 1a 5e c8       	vdivss %xmm8,%xmm12,%xmm9
     a5c:	c5 7a 10 65 b8       	vmovss -0x48(%rbp),%xmm12
     a61:	89 45 b8             	mov    %eax,-0x48(%rbp)
     a64:	b8 01 00 00 00       	mov    $0x1,%eax
     a69:	c4 e2 7a f7 87 f8 69 	sarx   %eax,0x1869f8(%rdi),%eax
     a70:	18 00 
     a72:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     a77:	c5 7a 10 7d b8       	vmovss -0x48(%rbp),%xmm15
     a7c:	89 45 b8             	mov    %eax,-0x48(%rbp)
     a7f:	b8 01 00 00 00       	mov    $0x1,%eax
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     a84:	c4 e2 7a f7 87 fc 69 	sarx   %eax,0x1869fc(%rdi),%eax
     a8b:	18 00 
     a8d:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a92:	c5 fa 10 65 b8       	vmovss -0x48(%rbp),%xmm4
     a97:	89 45 b8             	mov    %eax,-0x48(%rbp)
     a9a:	c5 2a 59 d0          	vmulss %xmm0,%xmm10,%xmm10
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a9e:	c4 41 32 58 c8       	vaddss %xmm8,%xmm9,%xmm9
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     aa3:	c5 7a 10 87 ec 69 18 	vmovss 0x1869ec(%rdi),%xmm8
     aaa:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     aab:	c5 32 59 c8          	vmulss %xmm0,%xmm9,%xmm9
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     aaf:	c5 3a 5e c1          	vdivss %xmm1,%xmm8,%xmm8
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ab3:	c5 3a 58 c1          	vaddss %xmm1,%xmm8,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ab7:	c4 c1 12 5e cc       	vdivss %xmm12,%xmm13,%xmm1
     abc:	c5 7a 10 af f4 69 18 	vmovss 0x1869f4(%rdi),%xmm13
     ac3:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ac4:	c5 3a 59 c0          	vmulss %xmm0,%xmm8,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ac8:	c4 c1 72 58 cc       	vaddss %xmm12,%xmm1,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     acd:	c4 41 12 5e ef       	vdivss %xmm15,%xmm13,%xmm13
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ad2:	c5 72 59 f0          	vmulss %xmm0,%xmm1,%xmm14
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     ad6:	c5 fa 10 8f f8 69 18 	vmovss 0x1869f8(%rdi),%xmm1
     add:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     ade:	c4 41 12 58 ef       	vaddss %xmm15,%xmm13,%xmm13
     ae3:	c5 7a 10 7d b8       	vmovss -0x48(%rbp),%xmm15
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ae8:	c5 f2 5e cc          	vdivss %xmm4,%xmm1,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     aec:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     af0:	c5 f2 58 cc          	vaddss %xmm4,%xmm1,%xmm1
     af4:	c5 fa 10 a7 fc 69 18 	vmovss 0x1869fc(%rdi),%xmm4
     afb:	00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     afc:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b00:	c4 41 5a 5e e7       	vdivss %xmm15,%xmm4,%xmm12
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b05:	c5 fa 10 a7 f0 69 18 	vmovss 0x1869f0(%rdi),%xmm4
     b0c:	00 
     b0d:	c4 41 1a 58 e7       	vaddss %xmm15,%xmm12,%xmm12
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     b12:	c4 41 5a 5e fe       	vdivss %xmm14,%xmm4,%xmm15
     b17:	c5 fa 10 a7 f4 69 18 	vmovss 0x1869f4(%rdi),%xmm4
     b1e:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     b1f:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
     b23:	c4 41 02 58 fe       	vaddss %xmm14,%xmm15,%xmm15
     b28:	c4 41 5a 5e f5       	vdivss %xmm13,%xmm4,%xmm14
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b2d:	c5 fa 10 a7 f8 69 18 	vmovss 0x1869f8(%rdi),%xmm4
     b34:	00 
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     b35:	c5 02 59 f8          	vmulss %xmm0,%xmm15,%xmm15
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b39:	c4 41 0a 58 f5       	vaddss %xmm13,%xmm14,%xmm14
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     b3e:	c5 5a 5e e9          	vdivss %xmm1,%xmm4,%xmm13
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b42:	c5 fa 10 a7 fc 69 18 	vmovss 0x1869fc(%rdi),%xmm4
     b49:	00 
     b4a:	c5 0a 59 f0          	vmulss %xmm0,%xmm14,%xmm14
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     b4e:	c5 12 58 e9          	vaddss %xmm1,%xmm13,%xmm13
     b52:	c4 c1 5a 5e cc       	vdivss %xmm12,%xmm4,%xmm1
     b57:	c5 fa 10 a7 f0 69 18 	vmovss 0x1869f0(%rdi),%xmm4
     b5e:	00 
     b5f:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
     b63:	c4 41 72 58 e4       	vaddss %xmm12,%xmm1,%xmm12
     b68:	c4 c1 5a 5e cf       	vdivss %xmm15,%xmm4,%xmm1
     b6d:	c5 fa 10 a7 f4 69 18 	vmovss 0x1869f4(%rdi),%xmm4
     b74:	00 
     b75:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
     b79:	c4 c1 72 58 cf       	vaddss %xmm15,%xmm1,%xmm1
     b7e:	c5 72 59 f8          	vmulss %xmm0,%xmm1,%xmm15
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b82:	c4 c1 5a 5e ce       	vdivss %xmm14,%xmm4,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     b87:	c5 fa 10 a7 f8 69 18 	vmovss 0x1869f8(%rdi),%xmm4
     b8e:	00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     b8f:	c4 c1 72 58 ce       	vaddss %xmm14,%xmm1,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b94:	c5 72 59 f0          	vmulss %xmm0,%xmm1,%xmm14
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b98:	c4 c1 5a 5e cd       	vdivss %xmm13,%xmm4,%xmm1
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     b9d:	c5 fa 10 a7 fc 69 18 	vmovss 0x1869fc(%rdi),%xmm4
     ba4:	00 
     ba5:	c4 c1 72 58 cd       	vaddss %xmm13,%xmm1,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     baa:	c5 72 59 e8          	vmulss %xmm0,%xmm1,%xmm13
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     bae:	c4 c1 5a 5e cc       	vdivss %xmm12,%xmm4,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bb3:	c5 fa 10 a7 e0 69 18 	vmovss 0x1869e0(%rdi),%xmm4
     bba:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     bbb:	c4 c1 72 58 cc       	vaddss %xmm12,%xmm1,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bc0:	c4 41 00 14 e6       	vunpcklps %xmm14,%xmm15,%xmm12
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bc5:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bc9:	c5 90 14 c9          	vunpcklps %xmm1,%xmm13,%xmm1
     bcd:	c5 18 16 e1          	vmovlhps %xmm1,%xmm12,%xmm12
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bd1:	c4 c1 5a 5e cb       	vdivss %xmm11,%xmm4,%xmm1
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bd6:	c5 fa 10 a7 e4 69 18 	vmovss 0x1869e4(%rdi),%xmm4
     bdd:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bde:	c4 c1 72 58 cb       	vaddss %xmm11,%xmm1,%xmm1
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     be3:	c5 72 59 d8          	vmulss %xmm0,%xmm1,%xmm11
     be7:	c4 c1 5a 5e ca       	vdivss %xmm10,%xmm4,%xmm1
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bec:	c5 fa 10 a7 e8 69 18 	vmovss 0x1869e8(%rdi),%xmm4
     bf3:	00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     bf4:	c4 c1 72 58 ca       	vaddss %xmm10,%xmm1,%xmm1
     bf9:	c5 72 59 d0          	vmulss %xmm0,%xmm1,%xmm10
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     bfd:	c4 c1 5a 5e c9       	vdivss %xmm9,%xmm4,%xmm1
     c02:	c5 fa 10 a7 ec 69 18 	vmovss 0x1869ec(%rdi),%xmm4
     c09:	00 
     c0a:	c4 c1 72 58 c9       	vaddss %xmm9,%xmm1,%xmm1
     c0f:	c4 41 5a 5e c8       	vdivss %xmm8,%xmm4,%xmm9
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c14:	c5 fa 10 a7 d0 69 18 	vmovss 0x1869d0(%rdi),%xmm4
     c1b:	00 
     c1c:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     c20:	c4 41 32 58 c0       	vaddss %xmm8,%xmm9,%xmm8
     c25:	c5 3a 59 c0          	vmulss %xmm0,%xmm8,%xmm8
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c29:	c4 41 70 14 c0       	vunpcklps %xmm8,%xmm1,%xmm8
     c2e:	c4 c1 20 14 ca       	vunpcklps %xmm10,%xmm11,%xmm1
     c33:	c4 c1 70 16 c8       	vmovlhps %xmm8,%xmm1,%xmm1
     c38:	c5 5a 5e c5          	vdivss %xmm5,%xmm4,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c3c:	c5 fa 10 a7 d4 69 18 	vmovss 0x1869d4(%rdi),%xmm4
     c43:	00 
     c44:	c5 7a 10 7d bc       	vmovss -0x44(%rbp),%xmm15
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c49:	c5 7a 10 9f cc 69 18 	vmovss 0x1869cc(%rdi),%xmm11
     c50:	00 
     c51:	c5 ba 58 ed          	vaddss %xmm5,%xmm8,%xmm5
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c55:	c4 41 5a 5e c7       	vdivss %xmm15,%xmm4,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c5a:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     c5e:	c4 c1 3a 58 e7       	vaddss %xmm15,%xmm8,%xmm4
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c63:	c5 7a 10 bf d8 69 18 	vmovss 0x1869d8(%rdi),%xmm15
     c6a:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c6b:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     c6f:	c5 02 5e c3          	vdivss %xmm3,%xmm15,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c73:	c5 7a 10 bf c8 69 18 	vmovss 0x1869c8(%rdi),%xmm15
     c7a:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c7b:	c5 ba 58 db          	vaddss %xmm3,%xmm8,%xmm3
     c7f:	c5 7a 10 87 dc 69 18 	vmovss 0x1869dc(%rdi),%xmm8
     c86:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c87:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     c8b:	c5 3a 5e c2          	vdivss %xmm2,%xmm8,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c8f:	c5 ba 58 d2          	vaddss %xmm2,%xmm8,%xmm2
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c93:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
     c97:	c5 e0 14 d2          	vunpcklps %xmm2,%xmm3,%xmm2
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c9b:	c5 d0 14 dc          	vunpcklps %xmm4,%xmm5,%xmm3
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c9f:	c5 fa 10 6d b4       	vmovss -0x4c(%rbp),%xmm5
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ca4:	c5 fa 10 a7 c0 69 18 	vmovss 0x1869c0(%rdi),%xmm4
     cab:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     cac:	c5 e0 16 da          	vmovlhps %xmm2,%xmm3,%xmm3
     cb0:	c5 da 5e d5          	vdivss %xmm5,%xmm4,%xmm2
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cb4:	c5 fa 10 a7 c4 69 18 	vmovss 0x1869c4(%rdi),%xmm4
     cbb:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     cbc:	c5 ea 58 d5          	vaddss %xmm5,%xmm2,%xmm2
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cc0:	c5 fa 10 6d b0       	vmovss -0x50(%rbp),%xmm5
     cc5:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cc9:	c5 da 5e e5          	vdivss %xmm5,%xmm4,%xmm4
     ccd:	c5 da 58 e5          	vaddss %xmm5,%xmm4,%xmm4
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cd1:	c5 fa 10 6d ac       	vmovss -0x54(%rbp),%xmm5
     cd6:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     cda:	c5 e8 14 d4          	vunpcklps %xmm4,%xmm2,%xmm2
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     cde:	c5 02 5e c5          	vdivss %xmm5,%xmm15,%xmm8
     ce2:	c5 7a 10 7d a8       	vmovss -0x58(%rbp),%xmm15
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ce7:	c5 3a 58 c5          	vaddss %xmm5,%xmm8,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ceb:	c4 c1 22 5e ef       	vdivss %xmm15,%xmm11,%xmm5
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cf0:	c5 3a 59 c0          	vmulss %xmm0,%xmm8,%xmm8
     cf4:	c4 c1 52 58 ef       	vaddss %xmm15,%xmm5,%xmm5
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     cf9:	c5 d2 59 c0          	vmulss %xmm0,%xmm5,%xmm0
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cfd:	c5 b8 14 c0          	vunpcklps %xmm0,%xmm8,%xmm0
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d01:	c5 68 16 c0          	vmovlhps %xmm0,%xmm2,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d05:	4c 89 c8             	mov    %r9,%rax
     d08:	48 89 fa             	mov    %rdi,%rdx
     d0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d10:	c5 f8 28 68 fc       	vmovaps -0x4(%rax),%xmm5
     d15:	48 83 c0 40          	add    $0x40,%rax
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d19:	48 83 c2 40          	add    $0x40,%rdx
     d1d:	c5 d0 c6 60 cc 88    	vshufps $0x88,-0x34(%rax),%xmm5,%xmm4
     d23:	c5 f8 28 68 dc       	vmovaps -0x24(%rax),%xmm5
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     d28:	c5 d0 c6 40 ec 88    	vshufps $0x88,-0x14(%rax),%xmm5,%xmm0
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d2e:	c5 f8 10 68 c0       	vmovups -0x40(%rax),%xmm5
     d33:	c5 d0 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm5,%xmm2
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     d39:	c5 f8 10 68 e0       	vmovups -0x20(%rax),%xmm5
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d3e:	c5 d8 c6 e0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm4
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     d43:	c5 d9 72 e4 01       	vpsrad $0x1,%xmm4,%xmm4
     d48:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d4c:	c5 d0 c6 40 f0 88    	vshufps $0x88,-0x10(%rax),%xmm5,%xmm0
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d52:	c5 f8 10 68 c4       	vmovups -0x3c(%rax),%xmm5
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d57:	c5 e8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm2,%xmm2
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d5c:	c5 d0 c6 40 d4 88    	vshufps $0x88,-0x2c(%rax),%xmm5,%xmm0
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d62:	c5 f8 10 68 e4       	vmovups -0x1c(%rax),%xmm5
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d67:	c5 e9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm2
     d6c:	c5 e9 fe d7          	vpaddd %xmm7,%xmm2,%xmm2
     d70:	c5 d0 c6 68 f4 88    	vshufps $0x88,-0xc(%rax),%xmm5,%xmm5
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d76:	c5 f8 c6 c5 88       	vshufps $0x88,%xmm5,%xmm0,%xmm0
     d7b:	c5 f8 10 68 c8       	vmovups -0x38(%rax),%xmm5
     d80:	c5 f9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm0
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     d85:	c5 f9 fe c7          	vpaddd %xmm7,%xmm0,%xmm0
     d89:	c5 50 c6 48 d8 88    	vshufps $0x88,-0x28(%rax),%xmm5,%xmm9
     d8f:	c5 f8 10 68 e8       	vmovups -0x18(%rax),%xmm5
     d94:	c5 d0 c6 68 f8 88    	vshufps $0x88,-0x8(%rax),%xmm5,%xmm5
     d9a:	c5 30 c6 cd 88       	vshufps $0x88,%xmm5,%xmm9,%xmm9
     d9f:	c5 f8 28 68 bc       	vmovaps -0x44(%rax),%xmm5
     da4:	c4 c1 31 72 e1 01    	vpsrad $0x1,%xmm9,%xmm9
     daa:	c5 31 fe cf          	vpaddd %xmm7,%xmm9,%xmm9
     dae:	c5 50 c6 50 cc 88    	vshufps $0x88,-0x34(%rax),%xmm5,%xmm10
     db4:	c5 f8 28 68 dc       	vmovaps -0x24(%rax),%xmm5
     db9:	c5 d0 c6 68 ec 88    	vshufps $0x88,-0x14(%rax),%xmm5,%xmm5
     dbf:	c5 a8 c6 ed 88       	vshufps $0x88,%xmm5,%xmm10,%xmm5
     dc4:	c5 50 5e ec          	vdivps %xmm4,%xmm5,%xmm13
     dc8:	c5 90 58 e4          	vaddps %xmm4,%xmm13,%xmm4
     dcc:	c5 58 59 ee          	vmulps %xmm6,%xmm4,%xmm13
void measure_sqrt_time(void) {
     dd0:	c5 f8 10 60 c0       	vmovups -0x40(%rax),%xmm4
     dd5:	c5 58 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm10
     ddb:	c5 f8 10 60 e0       	vmovups -0x20(%rax),%xmm4
     de0:	c5 d8 c6 60 f0 88    	vshufps $0x88,-0x10(%rax),%xmm4,%xmm4
     de6:	c5 a8 c6 e4 88       	vshufps $0x88,%xmm4,%xmm10,%xmm4
     deb:	c5 58 5e da          	vdivps %xmm2,%xmm4,%xmm11
     def:	c5 a0 58 d2          	vaddps %xmm2,%xmm11,%xmm2
     df3:	c5 68 59 de          	vmulps %xmm6,%xmm2,%xmm11
     df7:	c5 f8 10 50 c4       	vmovups -0x3c(%rax),%xmm2
     dfc:	c5 68 c6 50 d4 88    	vshufps $0x88,-0x2c(%rax),%xmm2,%xmm10
     e02:	c5 f8 10 50 e4       	vmovups -0x1c(%rax),%xmm2
     e07:	c5 e8 c6 50 f4 88    	vshufps $0x88,-0xc(%rax),%xmm2,%xmm2
     e0d:	c5 a8 c6 d2 88       	vshufps $0x88,%xmm2,%xmm10,%xmm2
     e12:	c5 68 5e d0          	vdivps %xmm0,%xmm2,%xmm10
     e16:	c5 a8 58 c0          	vaddps %xmm0,%xmm10,%xmm0
     e1a:	c5 78 59 d6          	vmulps %xmm6,%xmm0,%xmm10
     e1e:	c5 f8 10 40 c8       	vmovups -0x38(%rax),%xmm0
     e23:	c5 78 c6 70 d8 88    	vshufps $0x88,-0x28(%rax),%xmm0,%xmm14
      { return _M_insert(__n); }
     e29:	c5 f8 10 40 e8       	vmovups -0x18(%rax),%xmm0
     e2e:	c5 f8 c6 40 f8 88    	vshufps $0x88,-0x8(%rax),%xmm0,%xmm0
     e34:	c5 88 c6 c0 88       	vshufps $0x88,%xmm0,%xmm14,%xmm0
     e39:	c4 41 78 5e f1       	vdivps %xmm9,%xmm0,%xmm14
	__ostream_insert(__out, __s,
     e3e:	c4 41 08 58 c9       	vaddps %xmm9,%xmm14,%xmm9
     e43:	c4 41 50 5e f5       	vdivps %xmm13,%xmm5,%xmm14
     e48:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
     e4c:	c4 41 08 58 ed       	vaddps %xmm13,%xmm14,%xmm13
      { return _M_insert(__n); }
     e51:	c4 41 58 5e f3       	vdivps %xmm11,%xmm4,%xmm14
     e56:	c5 10 59 ee          	vmulps %xmm6,%xmm13,%xmm13
	__ostream_insert(__out, __s,
     e5a:	c4 41 08 58 db       	vaddps %xmm11,%xmm14,%xmm11
    { return flush(__os.put(__os.widen('\n'))); }
     e5f:	c4 41 68 5e f2       	vdivps %xmm10,%xmm2,%xmm14
      { return __check_facet(_M_ctype).widen(__c); }
     e64:	c5 20 59 de          	vmulps %xmm6,%xmm11,%xmm11
     e68:	c4 41 08 58 d2       	vaddps %xmm10,%xmm14,%xmm10
     e6d:	c4 41 78 5e f1       	vdivps %xmm9,%xmm0,%xmm14
      if (!__f)
     e72:	c5 28 59 d6          	vmulps %xmm6,%xmm10,%xmm10
     e76:	c4 41 08 58 c9       	vaddps %xmm9,%xmm14,%xmm9
     e7b:	c4 c1 50 5e ed       	vdivps %xmm13,%xmm5,%xmm5
     e80:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
     e84:	c4 c1 58 5e e3       	vdivps %xmm11,%xmm4,%xmm4
     e89:	c4 c1 50 58 ed       	vaddps %xmm13,%xmm5,%xmm5
    { return __os.flush(); }
     e8e:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
     e92:	c4 c1 78 5e c1       	vdivps %xmm9,%xmm0,%xmm0
	__ostream_insert(__out, __s,
     e97:	c4 c1 58 58 e3       	vaddps %xmm11,%xmm4,%xmm4
     e9c:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     ea0:	c4 c1 68 5e d2       	vdivps %xmm10,%xmm2,%xmm2
     ea5:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0
     eaa:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
     eae:	c4 c1 68 58 d2       	vaddps %xmm10,%xmm2,%xmm2
     eb3:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
     eb7:	c5 50 14 ca          	vunpcklps %xmm2,%xmm5,%xmm9
     ebb:	c5 d0 15 d2          	vunpckhps %xmm2,%xmm5,%xmm2
     ebf:	c5 d8 14 e8          	vunpcklps %xmm0,%xmm4,%xmm5
     ec3:	c5 d8 15 c0          	vunpckhps %xmm0,%xmm4,%xmm0
     ec7:	c5 b0 14 e5          	vunpcklps %xmm5,%xmm9,%xmm4
     ecb:	c5 30 15 cd          	vunpckhps %xmm5,%xmm9,%xmm9
     ecf:	c5 f8 29 62 c0       	vmovaps %xmm4,-0x40(%rdx)
     ed4:	c5 e8 14 e0          	vunpcklps %xmm0,%xmm2,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
     ed8:	c5 e8 15 d0          	vunpckhps %xmm0,%xmm2,%xmm2
      { return __check_facet(_M_ctype).widen(__c); }
     edc:	c5 78 29 4a d0       	vmovaps %xmm9,-0x30(%rdx)
     ee1:	c5 f8 29 62 e0       	vmovaps %xmm4,-0x20(%rdx)
      if (!__f)
     ee6:	c5 f8 29 52 f0       	vmovaps %xmm2,-0x10(%rdx)
     eeb:	48 39 c8             	cmp    %rcx,%rax
     eee:	0f 85 1c fe ff ff    	jne    d10 <_Z17measure_sqrt_timeILy3EEvv+0xd10>
     ef4:	41 ff c8             	dec    %r8d
     ef7:	c5 78 29 87 c0 34 0c 	vmovaps %xmm8,0xc34c0(%rdi)
     efe:	00 
     eff:	c5 f8 29 9f d0 34 0c 	vmovaps %xmm3,0xc34d0(%rdi)
     f06:	00 
     f07:	c5 f8 29 8f e0 34 0c 	vmovaps %xmm1,0xc34e0(%rdi)
     f0e:	00 
     f0f:	c5 78 29 a7 f0 34 0c 	vmovaps %xmm12,0xc34f0(%rdi)
     f16:	00 
    { return __os.flush(); }
     f17:	0f 85 e8 fd ff ff    	jne    d05 <_Z17measure_sqrt_timeILy3EEvv+0xd05>
     f1d:	e8 00 00 00 00       	callq  f22 <_Z17measure_sqrt_timeILy3EEvv+0xf22>
       floats[i] = random_double();
     f22:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     f29:	9b c4 20 
     f2c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     f30:	48 29 d8             	sub    %rbx,%rax
     f33:	48 89 c1             	mov    %rax,%rcx
     f36:	48 f7 ea             	imul   %rdx
    for (int i = 0; i < 4 * N; i++) {
     f39:	48 c1 f9 3f          	sar    $0x3f,%rcx
	__ostream_insert(__out, __s,
     f3d:	48 c1 fa 07          	sar    $0x7,%rdx
     f41:	48 29 ca             	sub    %rcx,%rdx
     f44:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # f4b <_Z17measure_sqrt_timeILy3EEvv+0xf4b>
     f4b:	e8 00 00 00 00       	callq  f50 <_Z17measure_sqrt_timeILy3EEvv+0xf50>
     f50:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    { return flush(__os.put(__os.widen('\n'))); }
     f56:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # f91 <_Z17measure_sqrt_timeILy3EEvv+0xf91>
     f5d:	48 89 c6             	mov    %rax,%rsi
      { return __check_facet(_M_ctype).widen(__c); }
     f60:	48 89 c1             	mov    %rax,%rcx
     f63:	e8 00 00 00 00       	callq  f68 <_Z17measure_sqrt_timeILy3EEvv+0xf68>
     f68:	48 8b 06             	mov    (%rsi),%rax
     f6b:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      if (!__f)
     f6f:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     f76:	00 
     f77:	48 85 db             	test   %rbx,%rbx
     f7a:	0f 84 0c f3 ff ff    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
     f80:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     f84:	0f 84 da 02 00 00    	je     1264 <_Z17measure_sqrt_timeILy3EEvv+0x1264>
     f8a:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     f8e:	48 89 f1             	mov    %rsi,%rcx
    { return __os.flush(); }
     f91:	e8 00 00 00 00       	callq  f96 <_Z17measure_sqrt_timeILy3EEvv+0xf96>
     f96:	48 89 c1             	mov    %rax,%rcx
     f99:	e8 00 00 00 00       	callq  f9e <_Z17measure_sqrt_timeILy3EEvv+0xf9e>
     f9e:	e8 00 00 00 00       	callq  fa3 <_Z17measure_sqrt_timeILy3EEvv+0xfa3>
     fa3:	ba e8 03 00 00       	mov    $0x3e8,%edx
     fa8:	48 89 c6             	mov    %rax,%rsi
     fab:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     faf:	31 c0                	xor    %eax,%eax
     fb1:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
     fb8:	48 83 c0 10          	add    $0x10,%rax
     fbc:	c5 e9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm2
          roots[i + k] = sqrt(floats[i + k]);
     fc1:	c5 e9 fe d7          	vpaddd %xmm7,%xmm2,%xmm2
     fc5:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
     fc9:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
     fcd:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
     fd1:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
     fd5:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
     fd9:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
     fdd:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
     fe1:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
     fe5:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
     fe9:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
     fef:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
     ff5:	75 ba                	jne    fb1 <_Z17measure_sqrt_timeILy3EEvv+0xfb1>
     ff7:	ff ca                	dec    %edx
     ff9:	75 b4                	jne    faf <_Z17measure_sqrt_timeILy3EEvv+0xfaf>
     ffb:	e8 00 00 00 00       	callq  1000 <_Z17measure_sqrt_timeILy3EEvv+0x1000>
    1000:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1007 <_Z17measure_sqrt_timeILy3EEvv+0x1007>
    1007:	41 b8 34 00 00 00    	mov    $0x34,%r8d
    100d:	48 8d 15 e8 00 00 00 	lea    0xe8(%rip),%rdx        # 10fc <_Z17measure_sqrt_timeILy3EEvv+0x10fc>
    1014:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1018:	48 29 f0             	sub    %rsi,%rax
    101b:	48 89 c3             	mov    %rax,%rbx
    101e:	e8 00 00 00 00       	callq  1023 <_Z17measure_sqrt_timeILy3EEvv+0x1023>
    1023:	49 8b 04 24          	mov    (%r12),%rax
    1027:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    102b:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
    1032:	00 
    1033:	48 85 f6             	test   %rsi,%rsi
    1036:	0f 84 50 f2 ff ff    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
    103c:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
      for (int i = 0; i < 4 * N; i += 4) {
    1040:	0f 84 13 03 00 00    	je     1359 <_Z17measure_sqrt_timeILy3EEvv+0x1359>
          roots[i + k] = sqrt(floats[i + k]);
    1046:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    104a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1051 <_Z17measure_sqrt_timeILy3EEvv+0x1051>
    1051:	e8 00 00 00 00       	callq  1056 <_Z17measure_sqrt_timeILy3EEvv+0x1056>
    1056:	48 89 c1             	mov    %rax,%rcx
    1059:	e8 00 00 00 00       	callq  105e <_Z17measure_sqrt_timeILy3EEvv+0x105e>
    105e:	48 89 d8             	mov    %rbx,%rax
    1061:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    1068:	9b c4 20 
	__throw_bad_cast();
    106b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1072 <_Z17measure_sqrt_timeILy3EEvv+0x1072>
    for (int j = 0; j < LOOP; j++) {
    1072:	48 c1 fb 3f          	sar    $0x3f,%rbx
    1076:	48 f7 ea             	imul   %rdx
       end = steady_clock::now();
    1079:	48 c1 fa 07          	sar    $0x7,%rdx
    107d:	48 29 da             	sub    %rbx,%rdx
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    1080:	e8 00 00 00 00       	callq  1085 <_Z17measure_sqrt_timeILy3EEvv+0x1085>
    1085:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    108b:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 10c6 <_Z17measure_sqrt_timeILy3EEvv+0x10c6>
    1092:	48 89 c6             	mov    %rax,%rsi
    1095:	48 89 c1             	mov    %rax,%rcx
    1098:	e8 00 00 00 00       	callq  109d <_Z17measure_sqrt_timeILy3EEvv+0x109d>
    109d:	48 8b 06             	mov    (%rsi),%rax
      { return _M_insert(__n); }
    10a0:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    10a4:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    10ab:	00 
	__ostream_insert(__out, __s,
    10ac:	48 85 db             	test   %rbx,%rbx
    10af:	0f 84 d7 f1 ff ff    	je     28c <_Z17measure_sqrt_timeILy3EEvv+0x28c>
    10b5:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      { return _M_insert(__n); }
    10b9:	0f 84 69 02 00 00    	je     1328 <_Z17measure_sqrt_timeILy3EEvv+0x1328>
	__ostream_insert(__out, __s,
    10bf:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    10c3:	48 89 f1             	mov    %rsi,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
    10c6:	e8 00 00 00 00       	callq  10cb <_Z17measure_sqrt_timeILy3EEvv+0x10cb>
      { return __check_facet(_M_ctype).widen(__c); }
    10cb:	90                   	nop
    10cc:	c5 f8 28 75 e0       	vmovaps -0x20(%rbp),%xmm6
    10d1:	c5 f8 28 7d f0       	vmovaps -0x10(%rbp),%xmm7
      if (!__f)
    10d6:	c5 78 28 45 00       	vmovaps 0x0(%rbp),%xmm8
    10db:	48 89 c1             	mov    %rax,%rcx
    10de:	c5 78 28 4d 10       	vmovaps 0x10(%rbp),%xmm9
    10e3:	c5 78 28 55 20       	vmovaps 0x20(%rbp),%xmm10
    10e8:	c5 78 28 5d 30       	vmovaps 0x30(%rbp),%xmm11
    10ed:	c5 78 28 65 40       	vmovaps 0x40(%rbp),%xmm12
    { return __os.flush(); }
    10f2:	c5 78 28 6d 50       	vmovaps 0x50(%rbp),%xmm13
	__ostream_insert(__out, __s,
    10f7:	c5 78 28 75 60       	vmovaps 0x60(%rbp),%xmm14
    10fc:	c5 78 28 7d 70       	vmovaps 0x70(%rbp),%xmm15
    1101:	48 8d a5 88 00 00 00 	lea    0x88(%rbp),%rsp
    1108:	5b                   	pop    %rbx
    1109:	5e                   	pop    %rsi
    110a:	5f                   	pop    %rdi
    110b:	41 5c                	pop    %r12
    110d:	41 5d                	pop    %r13
    { return flush(__os.put(__os.widen('\n'))); }
    110f:	41 5e                	pop    %r14
    1111:	41 5f                	pop    %r15
      { return __check_facet(_M_ctype).widen(__c); }
    1113:	5d                   	pop    %rbp
    1114:	e9 00 00 00 00       	jmpq   1119 <_Z17measure_sqrt_timeILy3EEvv+0x1119>
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      if (!__f)
    1120:	e8 00 00 00 00       	callq  1125 <_Z17measure_sqrt_timeILy3EEvv+0x1125>
    1125:	e9 28 f1 ff ff       	jmpq   252 <_Z17measure_sqrt_timeILy3EEvv+0x252>
    112a:	e8 00 00 00 00       	callq  112f <_Z17measure_sqrt_timeILy3EEvv+0x112f>
    112f:	e9 fa f0 ff ff       	jmpq   22e <_Z17measure_sqrt_timeILy3EEvv+0x22e>
    1134:	e8 00 00 00 00       	callq  1139 <_Z17measure_sqrt_timeILy3EEvv+0x1139>
    1139:	e9 cc f0 ff ff       	jmpq   20a <_Z17measure_sqrt_timeILy3EEvv+0x20a>
    113e:	48 89 d9             	mov    %rbx,%rcx
    1141:	e8 00 00 00 00       	callq  1146 <_Z17measure_sqrt_timeILy3EEvv+0x1146>
    { return __os.flush(); }
    1146:	48 8b 03             	mov    (%rbx),%rax
    1149:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1150 <_Z17measure_sqrt_timeILy3EEvv+0x1150>
       start = steady_clock::now();
    1150:	ba 0a 00 00 00       	mov    $0xa,%edx
    1155:	48 8b 40 30          	mov    0x30(%rax),%rax
    1159:	48 39 c8             	cmp    %rcx,%rax
    115c:	0f 84 cb ef ff ff    	je     12d <_Z17measure_sqrt_timeILy3EEvv+0x12d>
    1162:	48 89 d9             	mov    %rbx,%rcx
    1165:	ff d0                	callq  *%rax
    1167:	0f be d0             	movsbl %al,%edx
    116a:	e9 be ef ff ff       	jmpq   12d <_Z17measure_sqrt_timeILy3EEvv+0x12d>
    116f:	48 89 d9             	mov    %rbx,%rcx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    1172:	e8 00 00 00 00       	callq  1177 <_Z17measure_sqrt_timeILy3EEvv+0x1177>
    1177:	48 8b 03             	mov    (%rbx),%rax
    117a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1181 <_Z17measure_sqrt_timeILy3EEvv+0x1181>
    1181:	ba 0a 00 00 00       	mov    $0xa,%edx
    root = 0.5 * (root + (* a / root));
    1186:	48 8b 40 30          	mov    0x30(%rax),%rax
    118a:	48 39 c8             	cmp    %rcx,%rax
    118d:	0f 84 22 ef ff ff    	je     b5 <_Z17measure_sqrt_timeILy3EEvv+0xb5>
    1193:	48 89 d9             	mov    %rbx,%rcx
    1196:	ff d0                	callq  *%rax
    1198:	0f be d0             	movsbl %al,%edx
    119b:	e9 15 ef ff ff       	jmpq   b5 <_Z17measure_sqrt_timeILy3EEvv+0xb5>
        roots[i] = sqrt1<LOOPS>(floats + i);
    11a0:	48 89 d9             	mov    %rbx,%rcx
    11a3:	e8 00 00 00 00       	callq  11a8 <_Z17measure_sqrt_timeILy3EEvv+0x11a8>
    11a8:	48 8b 03             	mov    (%rbx),%rax
    11ab:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 11b2 <_Z17measure_sqrt_timeILy3EEvv+0x11b2>
       end = steady_clock::now();
    11b2:	ba 0a 00 00 00       	mov    $0xa,%edx
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    11b7:	48 8b 40 30          	mov    0x30(%rax),%rax
    11bb:	48 39 c8             	cmp    %rcx,%rax
    11be:	0f 84 ed ef ff ff    	je     1b1 <_Z17measure_sqrt_timeILy3EEvv+0x1b1>
    11c4:	48 89 d9             	mov    %rbx,%rcx
    11c7:	ff d0                	callq  *%rax
    11c9:	0f be d0             	movsbl %al,%edx
    11cc:	e9 e0 ef ff ff       	jmpq   1b1 <_Z17measure_sqrt_timeILy3EEvv+0x1b1>
    11d1:	48 89 f1             	mov    %rsi,%rcx
    11d4:	e8 00 00 00 00       	callq  11d9 <_Z17measure_sqrt_timeILy3EEvv+0x11d9>
      { return _M_insert(__n); }
    11d9:	48 8b 06             	mov    (%rsi),%rax
    11dc:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 11e3 <_Z17measure_sqrt_timeILy3EEvv+0x11e3>
	__ostream_insert(__out, __s,
    11e3:	ba 0a 00 00 00       	mov    $0xa,%edx
    11e8:	48 8b 40 30          	mov    0x30(%rax),%rax
    11ec:	48 39 c8             	cmp    %rcx,%rax
    11ef:	0f 84 62 f1 ff ff    	je     357 <_Z17measure_sqrt_timeILy3EEvv+0x357>
    11f5:	48 89 f1             	mov    %rsi,%rcx
    11f8:	ff d0                	callq  *%rax
    11fa:	0f be d0             	movsbl %al,%edx
    { return flush(__os.put(__os.widen('\n'))); }
    11fd:	e9 55 f1 ff ff       	jmpq   357 <_Z17measure_sqrt_timeILy3EEvv+0x357>
      { return __check_facet(_M_ctype).widen(__c); }
    1202:	48 89 f1             	mov    %rsi,%rcx
    1205:	e8 00 00 00 00       	callq  120a <_Z17measure_sqrt_timeILy3EEvv+0x120a>
      if (!__f)
    120a:	48 8b 06             	mov    (%rsi),%rax
    120d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1214 <_Z17measure_sqrt_timeILy3EEvv+0x1214>
    1214:	ba 0a 00 00 00       	mov    $0xa,%edx
    1219:	48 8b 40 30          	mov    0x30(%rax),%rax
    121d:	48 39 c8             	cmp    %rcx,%rax
    1220:	0f 84 75 f2 ff ff    	je     49b <_Z17measure_sqrt_timeILy3EEvv+0x49b>
    1226:	48 89 f1             	mov    %rsi,%rcx
    { return __os.flush(); }
    1229:	ff d0                	callq  *%rax
    122b:	0f be d0             	movsbl %al,%edx
    122e:	e9 68 f2 ff ff       	jmpq   49b <_Z17measure_sqrt_timeILy3EEvv+0x49b>
	__ostream_insert(__out, __s,
    1233:	48 89 d9             	mov    %rbx,%rcx
    1236:	e8 00 00 00 00       	callq  123b <_Z17measure_sqrt_timeILy3EEvv+0x123b>
    123b:	48 8b 03             	mov    (%rbx),%rax
    123e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1245 <_Z17measure_sqrt_timeILy3EEvv+0x1245>
    1245:	ba 0a 00 00 00       	mov    $0xa,%edx
    { return flush(__os.put(__os.widen('\n'))); }
    124a:	48 8b 40 30          	mov    0x30(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    124e:	48 39 c8             	cmp    %rcx,%rax
    1251:	0f 84 70 f4 ff ff    	je     6c7 <_Z17measure_sqrt_timeILy3EEvv+0x6c7>
    1257:	48 89 d9             	mov    %rbx,%rcx
      if (!__f)
    125a:	ff d0                	callq  *%rax
    125c:	0f be d0             	movsbl %al,%edx
    125f:	e9 63 f4 ff ff       	jmpq   6c7 <_Z17measure_sqrt_timeILy3EEvv+0x6c7>
    1264:	48 89 d9             	mov    %rbx,%rcx
    1267:	e8 00 00 00 00       	callq  126c <_Z17measure_sqrt_timeILy3EEvv+0x126c>
    126c:	48 8b 03             	mov    (%rbx),%rax
    126f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1276 <_Z17measure_sqrt_timeILy3EEvv+0x1276>
    1276:	ba 0a 00 00 00       	mov    $0xa,%edx
    127b:	48 8b 40 30          	mov    0x30(%rax),%rax
    { return __os.flush(); }
    127f:	48 39 c8             	cmp    %rcx,%rax
    1282:	0f 84 06 fd ff ff    	je     f8e <_Z17measure_sqrt_timeILy3EEvv+0xf8e>
       start = steady_clock::now();
    1288:	48 89 d9             	mov    %rbx,%rcx
    128b:	ff d0                	callq  *%rax
    128d:	0f be d0             	movsbl %al,%edx
    1290:	e9 f9 fc ff ff       	jmpq   f8e <_Z17measure_sqrt_timeILy3EEvv+0xf8e>
    1295:	48 89 f1             	mov    %rsi,%rcx
    1298:	e8 00 00 00 00       	callq  129d <_Z17measure_sqrt_timeILy3EEvv+0x129d>
    129d:	48 8b 06             	mov    (%rsi),%rax
    12a0:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 12a7 <_Z17measure_sqrt_timeILy3EEvv+0x12a7>
    12a7:	ba 0a 00 00 00       	mov    $0xa,%edx
    12ac:	48 8b 40 30          	mov    0x30(%rax),%rax
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    12b0:	48 39 c8             	cmp    %rcx,%rax
    12b3:	0f 84 92 f1 ff ff    	je     44b <_Z17measure_sqrt_timeILy3EEvv+0x44b>
    12b9:	48 89 f1             	mov    %rsi,%rcx
    12bc:	ff d0                	callq  *%rax
    12be:	0f be d0             	movsbl %al,%edx
    12c1:	e9 85 f1 ff ff       	jmpq   44b <_Z17measure_sqrt_timeILy3EEvv+0x44b>
    12c6:	48 89 d9             	mov    %rbx,%rcx
    12c9:	e8 00 00 00 00       	callq  12ce <_Z17measure_sqrt_timeILy3EEvv+0x12ce>
    12ce:	48 8b 03             	mov    (%rbx),%rax
    12d1:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 12d8 <_Z17measure_sqrt_timeILy3EEvv+0x12d8>
    12d8:	ba 0a 00 00 00       	mov    $0xa,%edx
    12dd:	48 8b 40 30          	mov    0x30(%rax),%rax
    12e1:	48 39 c8             	cmp    %rcx,%rax
    12e4:	0f 84 8d f3 ff ff    	je     677 <_Z17measure_sqrt_timeILy3EEvv+0x677>
    12ea:	48 89 d9             	mov    %rbx,%rcx
    12ed:	ff d0                	callq  *%rax
    12ef:	0f be d0             	movsbl %al,%edx
    12f2:	e9 80 f3 ff ff       	jmpq   677 <_Z17measure_sqrt_timeILy3EEvv+0x677>
    root = 0.5 * (root + (* a / root));
    12f7:	48 89 f1             	mov    %rsi,%rcx
    12fa:	e8 00 00 00 00       	callq  12ff <_Z17measure_sqrt_timeILy3EEvv+0x12ff>
    12ff:	48 8b 06             	mov    (%rsi),%rax
    1302:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1309 <_Z17measure_sqrt_timeILy3EEvv+0x1309>
    1309:	ba 0a 00 00 00       	mov    $0xa,%edx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    130e:	48 8b 40 30          	mov    0x30(%rax),%rax
    1312:	48 39 c8             	cmp    %rcx,%rax
    root = 0.5 * (root + (* a / root));
    1315:	0f 84 ec ef ff ff    	je     307 <_Z17measure_sqrt_timeILy3EEvv+0x307>
    131b:	48 89 f1             	mov    %rsi,%rcx
    131e:	ff d0                	callq  *%rax
    1320:	0f be d0             	movsbl %al,%edx
    1323:	e9 df ef ff ff       	jmpq   307 <_Z17measure_sqrt_timeILy3EEvv+0x307>
    1328:	48 89 d9             	mov    %rbx,%rcx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    132b:	e8 00 00 00 00       	callq  1330 <_Z17measure_sqrt_timeILy3EEvv+0x1330>
    1330:	48 8b 03             	mov    (%rbx),%rax
    1333:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 133a <_Z17measure_sqrt_timeILy3EEvv+0x133a>
    root = 0.5 * (root + (* a / root));
    133a:	ba 0a 00 00 00       	mov    $0xa,%edx
    133f:	48 8b 40 30          	mov    0x30(%rax),%rax
    1343:	48 39 c8             	cmp    %rcx,%rax
    1346:	0f 84 77 fd ff ff    	je     10c3 <_Z17measure_sqrt_timeILy3EEvv+0x10c3>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    134c:	48 89 d9             	mov    %rbx,%rcx
    134f:	ff d0                	callq  *%rax
    1351:	0f be d0             	movsbl %al,%edx
    1354:	e9 6a fd ff ff       	jmpq   10c3 <_Z17measure_sqrt_timeILy3EEvv+0x10c3>
    root = 0.5 * (root + (* a / root));
    1359:	48 89 f1             	mov    %rsi,%rcx
    135c:	e8 00 00 00 00       	callq  1361 <_Z17measure_sqrt_timeILy3EEvv+0x1361>
    1361:	48 8b 06             	mov    (%rsi),%rax
    1364:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 136b <_Z17measure_sqrt_timeILy3EEvv+0x136b>
    136b:	ba 0a 00 00 00       	mov    $0xa,%edx
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
    1370:	48 8b 40 30          	mov    0x30(%rax),%rax
    1374:	48 39 c8             	cmp    %rcx,%rax
    1377:	0f 84 cd fc ff ff    	je     104a <_Z17measure_sqrt_timeILy3EEvv+0x104a>
    137d:	48 89 f1             	mov    %rsi,%rcx
    1380:	ff d0                	callq  *%rax
    1382:	0f be d0             	movsbl %al,%edx
    1385:	e9 c0 fc ff ff       	jmpq   104a <_Z17measure_sqrt_timeILy3EEvv+0x104a>
    138a:	90                   	nop
    138b:	90                   	nop
    138c:	90                   	nop
    138d:	90                   	nop
    138e:	90                   	nop
    138f:	90                   	nop

Disassembly of section .text$_Z17measure_sqrt_timeILy4EEvv:

0000000000000000 <_Z17measure_sqrt_timeILy4EEvv>:
       0:	55                   	push   %rbp
       1:	41 57                	push   %r15
       3:	41 56                	push   %r14
       5:	41 55                	push   %r13
       7:	41 54                	push   %r12
       9:	57                   	push   %rdi
       a:	56                   	push   %rsi
       b:	53                   	push   %rbx
       c:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
{
      13:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
      1a:	00 
      1b:	c5 f8 29 75 f0       	vmovaps %xmm6,-0x10(%rbp)
  static std::random_device device;
      20:	c5 f8 29 7d 00       	vmovaps %xmm7,0x0(%rbp)
      25:	c5 78 29 45 10       	vmovaps %xmm8,0x10(%rbp)
      2a:	c5 78 29 4d 20       	vmovaps %xmm9,0x20(%rbp)
      2f:	c5 78 29 55 30       	vmovaps %xmm10,0x30(%rbp)
      34:	c5 78 29 5d 40       	vmovaps %xmm11,0x40(%rbp)
      39:	c5 78 29 65 50       	vmovaps %xmm12,0x50(%rbp)
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
      3e:	c5 78 29 6d 60       	vmovaps %xmm13,0x60(%rbp)
      43:	c5 78 29 75 70       	vmovaps %xmm14,0x70(%rbp)
      return this->_M_getval_pretr1();
      48:	c5 78 29 bd 80 00 00 	vmovaps %xmm15,0x80(%rbp)
      4f:	00 
      50:	b8 80 6a 18 00       	mov    $0x186a80,%eax
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
      55:	e8 00 00 00 00       	callq  5a <_Z17measure_sqrt_timeILy4EEvv+0x5a>
      5a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 61 <_Z17measure_sqrt_timeILy4EEvv+0x61>
      61:	ba 04 00 00 00       	mov    $0x4,%edx
      66:	48 29 c4             	sub    %rax,%rsp
      69:	e8 00 00 00 00       	callq  6e <_Z17measure_sqrt_timeILy4EEvv+0x6e>
      6e:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
      74:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 7b <_Z17measure_sqrt_timeILy4EEvv+0x7b>
      7b:	48 8d bc 24 9f 00 00 	lea    0x9f(%rsp),%rdi
      82:	00 
      83:	48 89 c6             	mov    %rax,%rsi
      __ret = __sum / __tmp;
      86:	48 89 c1             	mov    %rax,%rcx
      89:	48 83 e7 80          	and    $0xffffffffffffff80,%rdi
      if (__builtin_expect(__ret >= _RealType(1), 0))
      8d:	e8 00 00 00 00       	callq  92 <_Z17measure_sqrt_timeILy4EEvv+0x92>
      92:	48 8b 06             	mov    (%rsi),%rax
      95:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      99:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
      a0:	00 
      a1:	48 85 db             	test   %rbx,%rbx
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
      a4:	0f 84 eb 01 00 00    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
      aa:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
}
      ae:	0f 84 b2 11 00 00    	je     1266 <_Z17measure_sqrt_timeILy4EEvv+0x1266>
      b4:	0f be 53 43          	movsbl 0x43(%rbx),%edx
      b8:	48 89 f1             	mov    %rsi,%rcx
      bb:	e8 00 00 00 00       	callq  c0 <_Z17measure_sqrt_timeILy4EEvv+0xc0>
      c0:	48 89 c1             	mov    %rax,%rcx
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
      c3:	e8 00 00 00 00       	callq  c8 <_Z17measure_sqrt_timeILy4EEvv+0xc8>
      c8:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cf <_Z17measure_sqrt_timeILy4EEvv+0xcf>
      cf:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
	: _M_a(__a), _M_b(__b)
      d5:	48 8d 15 0c 00 00 00 	lea    0xc(%rip),%rdx        # e8 <_Z17measure_sqrt_timeILy4EEvv+0xe8>
      dc:	e8 00 00 00 00       	callq  e1 <_Z17measure_sqrt_timeILy4EEvv+0xe1>
      e1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # e8 <_Z17measure_sqrt_timeILy4EEvv+0xe8>
      e8:	ba 40 0d 03 00       	mov    $0x30d40,%edx
      ed:	e8 00 00 00 00       	callq  f2 <_Z17measure_sqrt_timeILy4EEvv+0xf2>
      f2:	41 b8 11 00 00 00    	mov    $0x11,%r8d
	: allocator_type(__a), _M_p(__dat) { }
      f8:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # 117 <_Z17measure_sqrt_timeILy4EEvv+0x117>
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
      ff:	48 89 c6             	mov    %rax,%rsi
     102:	48 89 c1             	mov    %rax,%rcx
    { _M_init_pretr1(__token); }
     105:	e8 00 00 00 00       	callq  10a <_Z17measure_sqrt_timeILy4EEvv+0x10a>
      { _M_string_length = __length; }
     10a:	48 8b 06             	mov    (%rsi),%rax
     10d:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     111:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     118:	00 
     119:	48 85 db             	test   %rbx,%rbx
     11c:	0f 84 73 01 00 00    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
     122:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
	: allocator_type(__a), _M_p(__dat) { }
     126:	0f 84 09 11 00 00    	je     1235 <_Z17measure_sqrt_timeILy4EEvv+0x1235>
      { __c1 = __c2; }
     12c:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     130:	48 89 f1             	mov    %rsi,%rcx
  static std::random_device device;
     133:	4c 8d af 00 35 0c 00 	lea    0xc3500(%rdi),%r13
	if (!_M_is_local())
     13a:	48 8d 9f 00 6a 18 00 	lea    0x186a00(%rdi),%rbx
     141:	e8 00 00 00 00       	callq  146 <_Z17measure_sqrt_timeILy4EEvv+0x146>
     146:	4d 89 ee             	mov    %r13,%r14
     149:	48 89 c1             	mov    %rax,%rcx
     14c:	e8 00 00 00 00       	callq  151 <_Z17measure_sqrt_timeILy4EEvv+0x151>
     151:	e8 10 00 00 00       	callq  166 <_Z17measure_sqrt_timeILy4EEvv+0x166>
     156:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
     15a:	49 83 c6 04          	add    $0x4,%r14
     15e:	c5 c3 5a f8          	vcvtsd2ss %xmm0,%xmm7,%xmm7
	  __ret = std::nextafter(_RealType(1), _RealType(0));
     162:	c4 c1 7a 11 7e fc    	vmovss %xmm7,-0x4(%r14)
     168:	49 39 de             	cmp    %rbx,%r14
     16b:	75 e4                	jne    151 <_Z17measure_sqrt_timeILy4EEvv+0x151>
     16d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 174 <_Z17measure_sqrt_timeILy4EEvv+0x174>
     174:	41 b8 09 00 00 00    	mov    $0x9,%r8d
     17a:	48 8d 15 2a 00 00 00 	lea    0x2a(%rip),%rdx        # 1ab <_Z17measure_sqrt_timeILy4EEvv+0x1ab>
     181:	e8 00 00 00 00       	callq  186 <_Z17measure_sqrt_timeILy4EEvv+0x186>
     186:	4c 8b 25 00 00 00 00 	mov    0x0(%rip),%r12        # 18d <_Z17measure_sqrt_timeILy4EEvv+0x18d>
     18d:	49 8b 04 24          	mov    (%r12),%rax
     191:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     195:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     19c:	00 
     19d:	48 85 db             	test   %rbx,%rbx
     1a0:	0f 84 ef 00 00 00    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
     1a6:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     1aa:	0f 84 e7 10 00 00    	je     1297 <_Z17measure_sqrt_timeILy4EEvv+0x1297>
     1b0:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     1b4:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1bb <_Z17measure_sqrt_timeILy4EEvv+0x1bb>
     1bb:	e8 00 00 00 00       	callq  1c0 <_Z17measure_sqrt_timeILy4EEvv+0x1c0>
     1c0:	48 89 c1             	mov    %rax,%rcx
     1c3:	e8 00 00 00 00       	callq  1c8 <_Z17measure_sqrt_timeILy4EEvv+0x1c8>
     1c8:	e8 00 00 00 00       	callq  1cd <_Z17measure_sqrt_timeILy4EEvv+0x1cd>
     1cd:	c7 45 cc e8 03 00 00 	movl   $0x3e8,-0x34(%rbp)
     1d4:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
     1d8:	49 89 c7             	mov    %rax,%r15
     1db:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     1df:	48 89 fe             	mov    %rdi,%rsi
     1e2:	4c 89 eb             	mov    %r13,%rbx
     1e5:	e9 8b 00 00 00       	jmpq   275 <_Z17measure_sqrt_timeILy4EEvv+0x275>
     1ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
void measure_sqrt_time(void) {
     1f0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     1f4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     1f8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
     1fd:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     201:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     205:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     209:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
     20d:	0f 87 18 10 00 00    	ja     122b <_Z17measure_sqrt_timeILy4EEvv+0x122b>
     213:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     217:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     21b:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
     220:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     224:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     228:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     22c:	c5 fa 11 5e 04       	vmovss %xmm3,0x4(%rsi)
     231:	0f 87 ea 0f 00 00    	ja     1221 <_Z17measure_sqrt_timeILy4EEvv+0x1221>
     237:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     23b:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     23f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
     244:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
      { return _M_insert(__n); }
     248:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
     24c:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
     250:	c5 fa 11 5e 08       	vmovss %xmm3,0x8(%rsi)
     255:	0f 87 bc 0f 00 00    	ja     1217 <_Z17measure_sqrt_timeILy4EEvv+0x1217>
	__ostream_insert(__out, __s,
     25b:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
     25f:	48 83 c3 10          	add    $0x10,%rbx
     263:	48 83 c6 10          	add    $0x10,%rsi
     267:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
     26b:	c5 fa 11 5e fc       	vmovss %xmm3,-0x4(%rsi)
      { return _M_insert(__n); }
     270:	4c 39 f3             	cmp    %r14,%rbx
	__ostream_insert(__out, __s,
     273:	74 2b                	je     2a0 <_Z17measure_sqrt_timeILy4EEvv+0x2a0>
     275:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
     279:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
     27d:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
    { return flush(__os.put(__os.widen('\n'))); }
     281:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
      { return __check_facet(_M_ctype).widen(__c); }
     285:	0f 86 65 ff ff ff    	jbe    1f0 <_Z17measure_sqrt_timeILy4EEvv+0x1f0>
     28b:	e8 00 00 00 00       	callq  290 <_Z17measure_sqrt_timeILy4EEvv+0x290>
      if (!__f)
     290:	e9 5b ff ff ff       	jmpq   1f0 <_Z17measure_sqrt_timeILy4EEvv+0x1f0>
     295:	e8 00 00 00 00       	callq  29a <_Z17measure_sqrt_timeILy4EEvv+0x29a>
     29a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     2a0:	ff 4d cc             	decl   -0x34(%rbp)
     2a3:	0f 85 36 ff ff ff    	jne    1df <_Z17measure_sqrt_timeILy4EEvv+0x1df>
     2a9:	e8 00 00 00 00       	callq  2ae <_Z17measure_sqrt_timeILy4EEvv+0x2ae>
    { return __os.flush(); }
     2ae:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     2b5:	9b c4 20 
	__ostream_insert(__out, __s,
     2b8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     2bc:	4c 29 f8             	sub    %r15,%rax
     2bf:	48 89 c1             	mov    %rax,%rcx
     2c2:	48 f7 ea             	imul   %rdx
     2c5:	48 c1 f9 3f          	sar    $0x3f,%rcx
     2c9:	48 c1 fa 07          	sar    $0x7,%rdx
     2cd:	48 29 ca             	sub    %rcx,%rdx
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
     2d0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2d7 <_Z17measure_sqrt_timeILy4EEvv+0x2d7>
     2d7:	e8 00 00 00 00       	callq  2dc <_Z17measure_sqrt_timeILy4EEvv+0x2dc>
     2dc:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     2e2:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 31d <_Z17measure_sqrt_timeILy4EEvv+0x31d>
     2e9:	49 89 c6             	mov    %rax,%r14
     2ec:	48 89 c1             	mov    %rax,%rcx
     2ef:	e8 00 00 00 00       	callq  2f4 <_Z17measure_sqrt_timeILy4EEvv+0x2f4>
     2f4:	49 8b 06             	mov    (%r14),%rax
    { return flush(__os.put(__os.widen('\n'))); }
     2f7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
     2fb:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
     302:	00 
     303:	48 85 f6             	test   %rsi,%rsi
      if (!__f)
     306:	74 8d                	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
     308:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     30c:	0f 84 dc 10 00 00    	je     13ee <_Z17measure_sqrt_timeILy4EEvv+0x13ee>
     312:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     316:	4c 89 f1             	mov    %r14,%rcx
     319:	e8 00 00 00 00       	callq  31e <_Z17measure_sqrt_timeILy4EEvv+0x31e>
     31e:	48 89 c1             	mov    %rax,%rcx
     321:	e8 00 00 00 00       	callq  326 <_Z17measure_sqrt_timeILy4EEvv+0x326>
     326:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 32d <_Z17measure_sqrt_timeILy4EEvv+0x32d>
     32d:	41 b8 37 00 00 00    	mov    $0x37,%r8d
    { return __os.flush(); }
     333:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 37a <_Z17measure_sqrt_timeILy4EEvv+0x37a>
     33a:	e8 00 00 00 00       	callq  33f <_Z17measure_sqrt_timeILy4EEvv+0x33f>
     33f:	49 8b 04 24          	mov    (%r12),%rax
       floats[i] = random_double();
     343:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     347:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     34e:	00 
     34f:	48 85 f6             	test   %rsi,%rsi
     352:	0f 84 3d ff ff ff    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
    for (int i = 0; i < 4 * N; i++) {
     358:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
	__ostream_insert(__out, __s,
     35c:	0f 84 66 0f 00 00    	je     12c8 <_Z17measure_sqrt_timeILy4EEvv+0x12c8>
     362:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     366:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 36d <_Z17measure_sqrt_timeILy4EEvv+0x36d>
     36d:	e8 00 00 00 00       	callq  372 <_Z17measure_sqrt_timeILy4EEvv+0x372>
     372:	48 89 c1             	mov    %rax,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
     375:	e8 00 00 00 00       	callq  37a <_Z17measure_sqrt_timeILy4EEvv+0x37a>
     37a:	e8 00 00 00 00       	callq  37f <_Z17measure_sqrt_timeILy4EEvv+0x37f>
     37f:	ba e8 03 00 00       	mov    $0x3e8,%edx
      { return __check_facet(_M_ctype).widen(__c); }
     384:	c5 f8 28 3d 50 01 00 	vmovaps 0x150(%rip),%xmm7        # 4dc <_Z17measure_sqrt_timeILy4EEvv+0x4dc>
     38b:	00 
      if (!__f)
     38c:	c5 f8 28 35 60 01 00 	vmovaps 0x160(%rip),%xmm6        # 4f4 <_Z17measure_sqrt_timeILy4EEvv+0x4f4>
     393:	00 
     394:	48 89 c6             	mov    %rax,%rsi
     397:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     39b:	31 c0                	xor    %eax,%eax
     39d:	0f 1f 00             	nopl   (%rax)
     3a0:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
     3a7:	48 83 c0 10          	add    $0x10,%rax
     3ab:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
    { return __os.flush(); }
     3b0:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
     3b4:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
     3b8:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
     3bc:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
     3c0:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
     3c4:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
     3c8:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
     3cc:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
     3d0:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
     3d4:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
     3d8:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
     3dc:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
          roots[i + k] = sqrt(floats[i + k]);
     3e0:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
     3e4:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
     3ea:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
     3f0:	75 ae                	jne    3a0 <_Z17measure_sqrt_timeILy4EEvv+0x3a0>
     3f2:	ff ca                	dec    %edx
     3f4:	75 a5                	jne    39b <_Z17measure_sqrt_timeILy4EEvv+0x39b>
     3f6:	e8 00 00 00 00       	callq  3fb <_Z17measure_sqrt_timeILy4EEvv+0x3fb>
     3fb:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     402:	9b c4 20 
     405:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     409:	48 29 f0             	sub    %rsi,%rax
     40c:	48 89 c1             	mov    %rax,%rcx
     40f:	48 f7 ea             	imul   %rdx
     412:	48 c1 f9 3f          	sar    $0x3f,%rcx
     416:	48 c1 fa 07          	sar    $0x7,%rdx
     41a:	48 29 ca             	sub    %rcx,%rdx
     41d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 424 <_Z17measure_sqrt_timeILy4EEvv+0x424>
     424:	e8 00 00 00 00       	callq  429 <_Z17measure_sqrt_timeILy4EEvv+0x429>
     429:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     42f:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 46a <_Z17measure_sqrt_timeILy4EEvv+0x46a>
     436:	49 89 c6             	mov    %rax,%r14
     439:	48 89 c1             	mov    %rax,%rcx
     43c:	e8 00 00 00 00       	callq  441 <_Z17measure_sqrt_timeILy4EEvv+0x441>
     441:	49 8b 06             	mov    (%r14),%rax
     444:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     448:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
     44f:	00 
     450:	48 85 f6             	test   %rsi,%rsi
     453:	0f 84 3c fe ff ff    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
     459:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     45d:	0f 84 29 0f 00 00    	je     138c <_Z17measure_sqrt_timeILy4EEvv+0x138c>
      for (int i = 0; i < 4 * N; i += 4) {
     463:	0f be 56 43          	movsbl 0x43(%rsi),%edx
          roots[i + k] = sqrt(floats[i + k]);
     467:	4c 89 f1             	mov    %r14,%rcx
     46a:	e8 00 00 00 00       	callq  46f <_Z17measure_sqrt_timeILy4EEvv+0x46f>
     46f:	48 89 c1             	mov    %rax,%rcx
     472:	e8 00 00 00 00       	callq  477 <_Z17measure_sqrt_timeILy4EEvv+0x477>
     477:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 47e <_Z17measure_sqrt_timeILy4EEvv+0x47e>
     47e:	41 b8 39 00 00 00    	mov    $0x39,%r8d
     484:	48 8d 15 78 00 00 00 	lea    0x78(%rip),%rdx        # 503 <_Z17measure_sqrt_timeILy4EEvv+0x503>
	__throw_bad_cast();
     48b:	e8 00 00 00 00       	callq  490 <_Z17measure_sqrt_timeILy4EEvv+0x490>
    for (int j = 0; j < LOOP; j++) {
     490:	49 8b 04 24          	mov    (%r12),%rax
     494:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     498:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
     49f:	00 
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     4a0:	48 85 f6             	test   %rsi,%rsi
     4a3:	0f 84 ec fd ff ff    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
       end = steady_clock::now();
     4a9:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
     4ad:	0f 84 46 0e 00 00    	je     12f9 <_Z17measure_sqrt_timeILy4EEvv+0x12f9>
     4b3:	0f be 56 43          	movsbl 0x43(%rsi),%edx
     4b7:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 4be <_Z17measure_sqrt_timeILy4EEvv+0x4be>
     4be:	e8 00 00 00 00       	callq  4c3 <_Z17measure_sqrt_timeILy4EEvv+0x4c3>
      { return _M_insert(__n); }
     4c3:	48 89 c1             	mov    %rax,%rcx
     4c6:	e8 00 00 00 00       	callq  4cb <_Z17measure_sqrt_timeILy4EEvv+0x4cb>
     4cb:	e8 00 00 00 00       	callq  4d0 <_Z17measure_sqrt_timeILy4EEvv+0x4d0>
	__ostream_insert(__out, __s,
     4d0:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
     4d5:	48 89 c6             	mov    %rax,%rsi
     4d8:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     4dc:	48 89 fa             	mov    %rdi,%rdx
     4df:	4c 89 e8             	mov    %r13,%rax
     4e2:	c5 f8 28 20          	vmovaps (%rax),%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
     4e6:	c5 f8 28 40 20       	vmovaps 0x20(%rax),%xmm0
      { return __check_facet(_M_ctype).widen(__c); }
     4eb:	48 83 c0 40          	add    $0x40,%rax
     4ef:	48 83 c2 40          	add    $0x40,%rdx
      if (!__f)
     4f3:	c5 d8 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm2
     4f9:	c5 f8 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm1
     4ff:	c5 d8 c6 60 d0 dd    	vshufps $0xdd,-0x30(%rax),%xmm4,%xmm4
     505:	c5 f8 c6 40 f0 dd    	vshufps $0xdd,-0x10(%rax),%xmm0,%xmm0
     50b:	c5 e8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm2,%xmm3
    { return __os.flush(); }
     510:	c5 e8 c6 c9 dd       	vshufps $0xdd,%xmm1,%xmm2,%xmm1
     515:	c5 d8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm2
	__ostream_insert(__out, __s,
     51a:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
     51f:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
     524:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
     528:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
     52c:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
     530:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      { return __check_facet(_M_ctype).widen(__c); }
     534:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
     538:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     53c:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      if (!__f)
     540:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
     544:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     548:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     54c:	c5 e0 5e dc          	vdivps %xmm4,%xmm3,%xmm3
     550:	c5 e0 58 dc          	vaddps %xmm4,%xmm3,%xmm3
     554:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
     559:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
     55d:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
     561:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
    { return __os.flush(); }
     565:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     569:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
       start = steady_clock::now();
     56d:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
     571:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     575:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
     579:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
     57d:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     581:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
     585:	c5 e8 5e d4          	vdivps %xmm4,%xmm2,%xmm2
     589:	c5 e8 58 d4          	vaddps %xmm4,%xmm2,%xmm2
     58d:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     592:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
     596:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
     59a:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
     59e:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     5a2:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
    root = 0.5 * (root + (* a / root));
     5a6:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
     5aa:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     5ae:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
     5b2:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
     5b6:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     5ba:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
     5be:	c5 f0 5e cc          	vdivps %xmm4,%xmm1,%xmm1
     5c2:	c5 f0 58 cc          	vaddps %xmm4,%xmm1,%xmm1
     5c6:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
     5cb:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
    for (int j = 0; j < LOOP; j++) {
     5cf:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
       end = steady_clock::now();
     5d3:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     5d7:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     5db:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
     5df:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
     5e3:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     5e7:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
     5eb:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
     5ef:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
     5f3:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
      { return _M_insert(__n); }
     5f7:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
     5fb:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
     5ff:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
	__ostream_insert(__out, __s,
     603:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
     607:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
     60b:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
     60f:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
     613:	c5 d8 14 d3          	vunpcklps %xmm3,%xmm4,%xmm2
     617:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
     61b:	c5 f8 29 52 c0       	vmovaps %xmm2,-0x40(%rdx)
      { return __check_facet(_M_ctype).widen(__c); }
     620:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
     624:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
     628:	c5 f8 29 62 d0       	vmovaps %xmm4,-0x30(%rdx)
      if (!__f)
     62d:	c5 f8 29 52 e0       	vmovaps %xmm2,-0x20(%rdx)
     632:	c5 f8 29 4a f0       	vmovaps %xmm1,-0x10(%rdx)
     637:	48 39 d8             	cmp    %rbx,%rax
     63a:	0f 85 a2 fe ff ff    	jne    4e2 <_Z17measure_sqrt_timeILy4EEvv+0x4e2>
     640:	ff c9                	dec    %ecx
     642:	0f 85 94 fe ff ff    	jne    4dc <_Z17measure_sqrt_timeILy4EEvv+0x4dc>
     648:	e8 00 00 00 00       	callq  64d <_Z17measure_sqrt_timeILy4EEvv+0x64d>
    { return __os.flush(); }
     64d:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
     654:	9b c4 20 
	__ostream_insert(__out, __s,
     657:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     65b:	48 29 f0             	sub    %rsi,%rax
     65e:	48 89 c1             	mov    %rax,%rcx
     661:	48 f7 ea             	imul   %rdx
     664:	48 c1 f9 3f          	sar    $0x3f,%rcx
     668:	48 c1 fa 07          	sar    $0x7,%rdx
    { return flush(__os.put(__os.widen('\n'))); }
     66c:	48 29 ca             	sub    %rcx,%rdx
      { return __check_facet(_M_ctype).widen(__c); }
     66f:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 676 <_Z17measure_sqrt_timeILy4EEvv+0x676>
     676:	e8 00 00 00 00       	callq  67b <_Z17measure_sqrt_timeILy4EEvv+0x67b>
      if (!__f)
     67b:	41 b8 05 00 00 00    	mov    $0x5,%r8d
     681:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 6bc <_Z17measure_sqrt_timeILy4EEvv+0x6bc>
     688:	48 89 c6             	mov    %rax,%rsi
     68b:	48 89 c1             	mov    %rax,%rcx
     68e:	e8 00 00 00 00       	callq  693 <_Z17measure_sqrt_timeILy4EEvv+0x693>
     693:	48 8b 06             	mov    (%rsi),%rax
     696:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     69a:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
     6a1:	00 
    { return __os.flush(); }
     6a2:	48 85 db             	test   %rbx,%rbx
       start = steady_clock::now();
     6a5:	0f 84 ea fb ff ff    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
     6ab:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     6af:	0f 84 08 0d 00 00    	je     13bd <_Z17measure_sqrt_timeILy4EEvv+0x13bd>
     6b5:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     6b9:	48 89 f1             	mov    %rsi,%rcx
     6bc:	e8 00 00 00 00       	callq  6c1 <_Z17measure_sqrt_timeILy4EEvv+0x6c1>
     6c1:	48 89 c1             	mov    %rax,%rcx
     6c4:	e8 00 00 00 00       	callq  6c9 <_Z17measure_sqrt_timeILy4EEvv+0x6c9>
     6c9:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 6d0 <_Z17measure_sqrt_timeILy4EEvv+0x6d0>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     6d0:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
     6d6:	48 8d 15 b8 00 00 00 	lea    0xb8(%rip),%rdx        # 795 <_Z17measure_sqrt_timeILy4EEvv+0x795>
     6dd:	e8 00 00 00 00       	callq  6e2 <_Z17measure_sqrt_timeILy4EEvv+0x6e2>
     6e2:	49 8b 04 24          	mov    (%r12),%rax
     6e6:	48 8b 40 e8          	mov    -0x18(%rax),%rax
     6ea:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
     6f1:	00 
     6f2:	48 85 db             	test   %rbx,%rbx
     6f5:	0f 84 9a fb ff ff    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
     6fb:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
     6ff:	0f 84 25 0c 00 00    	je     132a <_Z17measure_sqrt_timeILy4EEvv+0x132a>
     705:	0f be 53 43          	movsbl 0x43(%rbx),%edx
     709:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 710 <_Z17measure_sqrt_timeILy4EEvv+0x710>
     710:	e8 00 00 00 00       	callq  715 <_Z17measure_sqrt_timeILy4EEvv+0x715>
     715:	48 89 c1             	mov    %rax,%rcx
    root = 0.5 * (root + (* a / root));
     718:	e8 00 00 00 00       	callq  71d <_Z17measure_sqrt_timeILy4EEvv+0x71d>
     71d:	e8 00 00 00 00       	callq  722 <_Z17measure_sqrt_timeILy4EEvv+0x722>
     722:	41 b8 e8 03 00 00    	mov    $0x3e8,%r8d
     728:	4c 8d 8f 04 35 0c 00 	lea    0xc3504(%rdi),%r9
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     72f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    root = 0.5 * (root + (* a / root));
     733:	48 89 c3             	mov    %rax,%rbx
     736:	c5 fa 10 a7 c0 69 18 	vmovss 0x1869c0(%rdi),%xmm4
     73d:	00 
     73e:	c5 fa 10 9f c4 69 18 	vmovss 0x1869c4(%rdi),%xmm3
     745:	00 
     746:	b8 01 00 00 00       	mov    $0x1,%eax
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     74b:	c4 e2 7a f7 87 c0 69 	sarx   %eax,0x1869c0(%rdi),%eax
     752:	18 00 
    root = 0.5 * (root + (* a / root));
     754:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     759:	c5 7a 10 a7 d0 69 18 	vmovss 0x1869d0(%rdi),%xmm12
     760:	00 
     761:	89 45 cc             	mov    %eax,-0x34(%rbp)
     764:	b8 01 00 00 00       	mov    $0x1,%eax
     769:	c4 e2 7a f7 87 c4 69 	sarx   %eax,0x1869c4(%rdi),%eax
     770:	18 00 
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     772:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root = 0.5 * (root + (* a / root));
     777:	c5 fa 10 45 cc       	vmovss -0x34(%rbp),%xmm0
     77c:	89 45 cc             	mov    %eax,-0x34(%rbp)
     77f:	b8 01 00 00 00       	mov    $0x1,%eax
     784:	c4 e2 7a f7 87 c8 69 	sarx   %eax,0x1869c8(%rdi),%eax
     78b:	18 00 
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
     78d:	c5 fa 10 55 cc       	vmovss -0x34(%rbp),%xmm2
     792:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     797:	48 8d 8f c0 34 0c 00 	lea    0xc34c0(%rdi),%rcx
     79e:	89 45 cc             	mov    %eax,-0x34(%rbp)
     7a1:	b8 01 00 00 00       	mov    $0x1,%eax
     7a6:	c4 e2 7a f7 87 cc 69 	sarx   %eax,0x1869cc(%rdi),%eax
     7ad:	18 00 
     7af:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     7b4:	c5 fa 10 4d cc       	vmovss -0x34(%rbp),%xmm1
     7b9:	89 45 cc             	mov    %eax,-0x34(%rbp)
     7bc:	b8 01 00 00 00       	mov    $0x1,%eax
     7c1:	c4 e2 7a f7 87 d0 69 	sarx   %eax,0x1869d0(%rdi),%eax
     7c8:	18 00 
     7ca:	c5 fa 10 6d cc       	vmovss -0x34(%rbp),%xmm5
    for (int j = 0; j < LOOP; j++) {
     7cf:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     7d4:	89 45 cc             	mov    %eax,-0x34(%rbp)
       end = steady_clock::now();
     7d7:	b8 01 00 00 00       	mov    $0x1,%eax
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
     7dc:	c4 e2 7a f7 87 d4 69 	sarx   %eax,0x1869d4(%rdi),%eax
     7e3:	18 00 
     7e5:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     7ea:	c5 5a 5e d0          	vdivss %xmm0,%xmm4,%xmm10
     7ee:	c5 62 5e ca          	vdivss %xmm2,%xmm3,%xmm9
     7f2:	c5 2a 58 d0          	vaddss %xmm0,%xmm10,%xmm10
     7f6:	c5 fa 10 05 70 01 00 	vmovss 0x170(%rip),%xmm0        # 96e <_Z17measure_sqrt_timeILy4EEvv+0x96e>
     7fd:	00 
      { return _M_insert(__n); }
     7fe:	c5 2a 59 d0          	vmulss %xmm0,%xmm10,%xmm10
     802:	c5 b2 58 d2          	vaddss %xmm2,%xmm9,%xmm2
     806:	c5 6a 59 c8          	vmulss %xmm0,%xmm2,%xmm9
	__ostream_insert(__out, __s,
     80a:	c5 fa 10 97 c8 69 18 	vmovss 0x1869c8(%rdi),%xmm2
     811:	00 
     812:	c5 6a 5e c1          	vdivss %xmm1,%xmm2,%xmm8
      { return _M_insert(__n); }
     816:	c5 ba 58 c9          	vaddss %xmm1,%xmm8,%xmm1
	__ostream_insert(__out, __s,
     81a:	c5 72 59 c0          	vmulss %xmm0,%xmm1,%xmm8
     81e:	c5 fa 10 8f cc 69 18 	vmovss 0x1869cc(%rdi),%xmm1
     825:	00 
      { return __check_facet(_M_ctype).widen(__c); }
     826:	c5 72 5e dd          	vdivss %xmm5,%xmm1,%xmm11
     82a:	c5 a2 58 ed          	vaddss %xmm5,%xmm11,%xmm5
     82e:	c4 41 5a 5e da       	vdivss %xmm10,%xmm4,%xmm11
      if (!__f)
     833:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     837:	c4 41 22 58 d2       	vaddss %xmm10,%xmm11,%xmm10
     83c:	c4 41 62 5e d9       	vdivss %xmm9,%xmm3,%xmm11
     841:	c5 2a 59 d0          	vmulss %xmm0,%xmm10,%xmm10
     845:	c4 41 22 58 c9       	vaddss %xmm9,%xmm11,%xmm9
    { return flush(__os.put(__os.widen('\n'))); }
     84a:	c4 41 6a 5e d8       	vdivss %xmm8,%xmm2,%xmm11
    { return __os.flush(); }
     84f:	c5 32 59 c8          	vmulss %xmm0,%xmm9,%xmm9
     853:	c4 41 22 58 c0       	vaddss %xmm8,%xmm11,%xmm8
	__ostream_insert(__out, __s,
     858:	c5 72 5e dd          	vdivss %xmm5,%xmm1,%xmm11
     85c:	c5 3a 59 c0          	vmulss %xmm0,%xmm8,%xmm8
     860:	c5 a2 58 ed          	vaddss %xmm5,%xmm11,%xmm5
     864:	c4 41 5a 5e da       	vdivss %xmm10,%xmm4,%xmm11
     869:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     86d:	c4 41 22 58 d2       	vaddss %xmm10,%xmm11,%xmm10
    { return flush(__os.put(__os.widen('\n'))); }
     872:	c4 41 62 5e d9       	vdivss %xmm9,%xmm3,%xmm11
      { return __check_facet(_M_ctype).widen(__c); }
     877:	c5 2a 59 d0          	vmulss %xmm0,%xmm10,%xmm10
     87b:	c4 c1 5a 5e e2       	vdivss %xmm10,%xmm4,%xmm4
      if (!__f)
     880:	c4 41 22 58 c9       	vaddss %xmm9,%xmm11,%xmm9
     885:	c5 32 59 c8          	vmulss %xmm0,%xmm9,%xmm9
     889:	c4 41 6a 5e d8       	vdivss %xmm8,%xmm2,%xmm11
     88e:	c4 c1 5a 58 e2       	vaddss %xmm10,%xmm4,%xmm4
     893:	c5 7a 10 55 cc       	vmovss -0x34(%rbp),%xmm10
     898:	89 45 cc             	mov    %eax,-0x34(%rbp)
     89b:	b8 01 00 00 00       	mov    $0x1,%eax
     8a0:	c4 e2 7a f7 87 d8 69 	sarx   %eax,0x1869d8(%rdi),%eax
     8a7:	18 00 
    { return __os.flush(); }
     8a9:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
       start = steady_clock::now();
     8ae:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     8b2:	c4 41 22 58 c0       	vaddss %xmm8,%xmm11,%xmm8
     8b7:	c4 41 1a 5e f2       	vdivss %xmm10,%xmm12,%xmm14
     8bc:	c5 3a 59 c0          	vmulss %xmm0,%xmm8,%xmm8
     8c0:	c4 c1 6a 5e d0       	vdivss %xmm8,%xmm2,%xmm2
     8c5:	c4 41 0a 58 d2       	vaddss %xmm10,%xmm14,%xmm10
     8ca:	c5 2a 59 f0          	vmulss %xmm0,%xmm10,%xmm14
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     8ce:	c5 7a 10 97 d4 69 18 	vmovss 0x1869d4(%rdi),%xmm10
     8d5:	00 
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     8d6:	c5 72 5e dd          	vdivss %xmm5,%xmm1,%xmm11
     8da:	c4 c1 6a 58 d0       	vaddss %xmm8,%xmm2,%xmm2
     8df:	c5 7a 10 45 cc       	vmovss -0x34(%rbp),%xmm8
     8e4:	89 45 cc             	mov    %eax,-0x34(%rbp)
     8e7:	b8 01 00 00 00       	mov    $0x1,%eax
     8ec:	c4 e2 7a f7 87 dc 69 	sarx   %eax,0x1869dc(%rdi),%eax
     8f3:	18 00 
     8f5:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     8fa:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
     8fe:	c5 a2 58 ed          	vaddss %xmm5,%xmm11,%xmm5
     902:	c4 41 2a 5e e8       	vdivss %xmm8,%xmm10,%xmm13
     907:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     90b:	c5 f2 5e cd          	vdivss %xmm5,%xmm1,%xmm1
     90f:	c4 41 12 58 c0       	vaddss %xmm8,%xmm13,%xmm8
     914:	c5 3a 59 e8          	vmulss %xmm0,%xmm8,%xmm13
     918:	c4 c1 62 5e d9       	vdivss %xmm9,%xmm3,%xmm3
     91d:	c5 f2 58 cd          	vaddss %xmm5,%xmm1,%xmm1
     921:	c5 fa 10 6d cc       	vmovss -0x34(%rbp),%xmm5
     926:	89 45 cc             	mov    %eax,-0x34(%rbp)
     929:	b8 01 00 00 00       	mov    $0x1,%eax
     92e:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     932:	c4 c1 62 58 d9       	vaddss %xmm9,%xmm3,%xmm3
     937:	c5 7a 10 4d cc       	vmovss -0x34(%rbp),%xmm9
     93c:	c5 7a 10 87 d8 69 18 	vmovss 0x1869d8(%rdi),%xmm8
     943:	00 
     944:	c4 e2 7a f7 87 e0 69 	sarx   %eax,0x1869e0(%rdi),%eax
     94b:	18 00 
     94d:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     952:	89 45 cc             	mov    %eax,-0x34(%rbp)
     955:	b8 01 00 00 00       	mov    $0x1,%eax
     95a:	c4 e2 7a f7 87 e4 69 	sarx   %eax,0x1869e4(%rdi),%eax
     961:	18 00 
     963:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     968:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     96c:	c5 3a 5e dd          	vdivss %xmm5,%xmm8,%xmm11
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     970:	c5 a2 58 ed          	vaddss %xmm5,%xmm11,%xmm5
     974:	c5 52 59 d8          	vmulss %xmm0,%xmm5,%xmm11
     978:	c5 fa 10 af dc 69 18 	vmovss 0x1869dc(%rdi),%xmm5
     97f:	00 
     980:	c4 41 52 5e f9       	vdivss %xmm9,%xmm5,%xmm15
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     985:	c4 41 02 58 c9       	vaddss %xmm9,%xmm15,%xmm9
     98a:	c4 41 1a 5e fe       	vdivss %xmm14,%xmm12,%xmm15
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     98f:	c5 32 59 c8          	vmulss %xmm0,%xmm9,%xmm9
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     993:	c4 41 02 58 f6       	vaddss %xmm14,%xmm15,%xmm14
     998:	c4 41 2a 5e fd       	vdivss %xmm13,%xmm10,%xmm15
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     99d:	c5 0a 59 f0          	vmulss %xmm0,%xmm14,%xmm14
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     9a1:	c4 41 02 58 ed       	vaddss %xmm13,%xmm15,%xmm13
     9a6:	c4 41 3a 5e fb       	vdivss %xmm11,%xmm8,%xmm15
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     9ab:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
     9af:	c4 41 02 58 db       	vaddss %xmm11,%xmm15,%xmm11
     9b4:	c4 41 52 5e f9       	vdivss %xmm9,%xmm5,%xmm15
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     9b9:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
     9bd:	c4 41 02 58 c9       	vaddss %xmm9,%xmm15,%xmm9
     9c2:	c4 41 1a 5e fe       	vdivss %xmm14,%xmm12,%xmm15
     9c7:	c5 32 59 c8          	vmulss %xmm0,%xmm9,%xmm9
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     9cb:	c4 41 02 58 f6       	vaddss %xmm14,%xmm15,%xmm14
     9d0:	c4 41 2a 5e fd       	vdivss %xmm13,%xmm10,%xmm15
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     9d5:	c5 0a 59 f0          	vmulss %xmm0,%xmm14,%xmm14
     9d9:	c4 41 02 58 ed       	vaddss %xmm13,%xmm15,%xmm13
     9de:	c4 41 3a 5e fb       	vdivss %xmm11,%xmm8,%xmm15
     9e3:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
     9e7:	c4 41 02 58 db       	vaddss %xmm11,%xmm15,%xmm11
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     9ec:	c4 41 52 5e f9       	vdivss %xmm9,%xmm5,%xmm15
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     9f1:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
     9f5:	c4 41 02 58 c9       	vaddss %xmm9,%xmm15,%xmm9
     9fa:	c4 41 1a 5e e6       	vdivss %xmm14,%xmm12,%xmm12
     9ff:	c5 32 59 c8          	vmulss %xmm0,%xmm9,%xmm9
     a03:	c4 41 2a 5e d5       	vdivss %xmm13,%xmm10,%xmm10
     a08:	c4 41 1a 58 e6       	vaddss %xmm14,%xmm12,%xmm12
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a0d:	c5 1a 59 f8          	vmulss %xmm0,%xmm12,%xmm15
     a11:	c5 7a 11 7d b4       	vmovss %xmm15,-0x4c(%rbp)
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a16:	c4 c1 52 5e e9       	vdivss %xmm9,%xmm5,%xmm5
     a1b:	c4 41 2a 58 d5       	vaddss %xmm13,%xmm10,%xmm10
     a20:	c5 2a 59 f8          	vmulss %xmm0,%xmm10,%xmm15
     a24:	c5 7a 10 97 e0 69 18 	vmovss 0x1869e0(%rdi),%xmm10
     a2b:	00 
     a2c:	c5 7a 11 7d c0       	vmovss %xmm15,-0x40(%rbp)
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a31:	c4 c1 52 58 e9       	vaddss %xmm9,%xmm5,%xmm5
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a36:	c5 7a 10 4d cc       	vmovss -0x34(%rbp),%xmm9
     a3b:	c4 41 3a 5e c3       	vdivss %xmm11,%xmm8,%xmm8
     a40:	89 45 cc             	mov    %eax,-0x34(%rbp)
     a43:	b8 01 00 00 00       	mov    $0x1,%eax
     a48:	c4 e2 7a f7 87 e8 69 	sarx   %eax,0x1869e8(%rdi),%eax
     a4f:	18 00 
     a51:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     a56:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     a5a:	c5 fa 11 6d c4       	vmovss %xmm5,-0x3c(%rbp)
     a5f:	c4 41 2a 5e e1       	vdivss %xmm9,%xmm10,%xmm12
     a64:	c4 41 3a 58 c3       	vaddss %xmm11,%xmm8,%xmm8
     a69:	c5 3a 59 f8          	vmulss %xmm0,%xmm8,%xmm15
     a6d:	c5 7a 10 45 cc       	vmovss -0x34(%rbp),%xmm8
     a72:	89 45 cc             	mov    %eax,-0x34(%rbp)
     a75:	b8 01 00 00 00       	mov    $0x1,%eax
     a7a:	c5 fa 10 6d cc       	vmovss -0x34(%rbp),%xmm5
     a7f:	c4 e2 7a f7 87 ec 69 	sarx   %eax,0x1869ec(%rdi),%eax
     a86:	18 00 
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     a88:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     a8d:	89 45 cc             	mov    %eax,-0x34(%rbp)
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     a90:	b8 01 00 00 00       	mov    $0x1,%eax
     a95:	c4 e2 7a f7 87 f0 69 	sarx   %eax,0x1869f0(%rdi),%eax
     a9c:	18 00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     a9e:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     aa3:	c5 7a 11 7d c8       	vmovss %xmm15,-0x38(%rbp)
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     aa8:	c5 7a 10 5d cc       	vmovss -0x34(%rbp),%xmm11
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     aad:	89 45 ac             	mov    %eax,-0x54(%rbp)
     ab0:	b8 01 00 00 00       	mov    $0x1,%eax
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ab5:	c4 e2 7a f7 87 f4 69 	sarx   %eax,0x1869f4(%rdi),%eax
     abc:	18 00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     abe:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ac3:	c4 41 1a 58 c9       	vaddss %xmm9,%xmm12,%xmm9
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ac8:	c5 32 59 e8          	vmulss %xmm0,%xmm9,%xmm13
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     acc:	c5 7a 10 8f e4 69 18 	vmovss 0x1869e4(%rdi),%xmm9
     ad3:	00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ad4:	c4 41 32 5e e0       	vdivss %xmm8,%xmm9,%xmm12
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     ad9:	c4 41 1a 58 c0       	vaddss %xmm8,%xmm12,%xmm8
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     ade:	c5 3a 59 f8          	vmulss %xmm0,%xmm8,%xmm15
     ae2:	c5 7a 10 87 e8 69 18 	vmovss 0x1869e8(%rdi),%xmm8
     ae9:	00 
     aea:	c5 3a 5e e5          	vdivss %xmm5,%xmm8,%xmm12
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     aee:	c5 1a 58 e5          	vaddss %xmm5,%xmm12,%xmm12
     af2:	c5 fa 10 af ec 69 18 	vmovss 0x1869ec(%rdi),%xmm5
     af9:	00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     afa:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
     afe:	c4 41 52 5e f3       	vdivss %xmm11,%xmm5,%xmm14
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b03:	c4 41 0a 58 f3       	vaddss %xmm11,%xmm14,%xmm14
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b08:	c4 41 2a 5e dd       	vdivss %xmm13,%xmm10,%xmm11
     b0d:	c5 0a 59 f0          	vmulss %xmm0,%xmm14,%xmm14
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     b11:	c4 41 22 58 ed       	vaddss %xmm13,%xmm11,%xmm13
     b16:	c4 41 32 5e df       	vdivss %xmm15,%xmm9,%xmm11
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     b1b:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
     b1f:	c4 41 22 58 df       	vaddss %xmm15,%xmm11,%xmm11
     b24:	c4 41 3a 5e fc       	vdivss %xmm12,%xmm8,%xmm15
     b29:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b2d:	c4 41 02 58 e4       	vaddss %xmm12,%xmm15,%xmm12
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b32:	c4 41 52 5e fe       	vdivss %xmm14,%xmm5,%xmm15
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     b37:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b3b:	c4 41 02 58 fe       	vaddss %xmm14,%xmm15,%xmm15
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     b40:	c4 41 2a 5e f5       	vdivss %xmm13,%xmm10,%xmm14
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b45:	c5 02 59 f8          	vmulss %xmm0,%xmm15,%xmm15
     b49:	c4 41 0a 58 f5       	vaddss %xmm13,%xmm14,%xmm14
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     b4e:	c4 41 32 5e eb       	vdivss %xmm11,%xmm9,%xmm13
     b53:	c5 0a 59 f0          	vmulss %xmm0,%xmm14,%xmm14
     b57:	c4 41 12 58 eb       	vaddss %xmm11,%xmm13,%xmm13
     b5c:	c4 41 3a 5e dc       	vdivss %xmm12,%xmm8,%xmm11
     b61:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
     b65:	c4 41 22 58 e4       	vaddss %xmm12,%xmm11,%xmm12
     b6a:	c4 41 52 5e df       	vdivss %xmm15,%xmm5,%xmm11
     b6f:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
     b73:	c4 41 22 58 df       	vaddss %xmm15,%xmm11,%xmm11
     b78:	c4 41 2a 5e d6       	vdivss %xmm14,%xmm10,%xmm10
     b7d:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b81:	c4 41 32 5e cd       	vdivss %xmm13,%xmm9,%xmm9
     b86:	c4 41 2a 58 d6       	vaddss %xmm14,%xmm10,%xmm10
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b8b:	c5 2a 59 f8          	vmulss %xmm0,%xmm10,%xmm15
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     b8f:	c5 7a 11 7d b8       	vmovss %xmm15,-0x48(%rbp)
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     b94:	c4 41 3a 5e c4       	vdivss %xmm12,%xmm8,%xmm8
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     b99:	c4 41 32 58 cd       	vaddss %xmm13,%xmm9,%xmm9
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     b9e:	c5 32 59 f8          	vmulss %xmm0,%xmm9,%xmm15
     ba2:	c5 7a 10 4d ac       	vmovss -0x54(%rbp),%xmm9
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ba7:	89 45 ac             	mov    %eax,-0x54(%rbp)
     baa:	b8 01 00 00 00       	mov    $0x1,%eax
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     baf:	c5 7a 11 7d bc       	vmovss %xmm15,-0x44(%rbp)
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bb4:	c4 c1 52 5e eb       	vdivss %xmm11,%xmm5,%xmm5
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     bb9:	c4 41 3a 58 c4       	vaddss %xmm12,%xmm8,%xmm8
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bbe:	c5 3a 59 f8          	vmulss %xmm0,%xmm8,%xmm15
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bc2:	c5 7a 10 45 ac       	vmovss -0x54(%rbp),%xmm8
     bc7:	c5 7a 11 7d b0       	vmovss %xmm15,-0x50(%rbp)
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bcc:	c4 41 52 58 db       	vaddss %xmm11,%xmm5,%xmm11
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bd1:	c5 a2 59 e8          	vmulss %xmm0,%xmm11,%xmm5
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     bd5:	c5 fa 11 6d cc       	vmovss %xmm5,-0x34(%rbp)
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     bda:	c4 e2 7a f7 87 f8 69 	sarx   %eax,0x1869f8(%rdi),%eax
     be1:	18 00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     be3:	c5 7a 10 97 f0 69 18 	vmovss 0x1869f0(%rdi),%xmm10
     bea:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     beb:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     bf0:	89 45 ac             	mov    %eax,-0x54(%rbp)
     bf3:	b8 01 00 00 00       	mov    $0x1,%eax
     bf8:	c4 e2 7a f7 87 fc 69 	sarx   %eax,0x1869fc(%rdi),%eax
     bff:	18 00 
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c01:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
     c06:	c5 fa 10 6d ac       	vmovss -0x54(%rbp),%xmm5
     c0b:	89 45 ac             	mov    %eax,-0x54(%rbp)
     c0e:	c5 7a 10 5d ac       	vmovss -0x54(%rbp),%xmm11
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c13:	c4 41 2a 5e e1       	vdivss %xmm9,%xmm10,%xmm12
     c18:	c4 41 1a 58 c9       	vaddss %xmm9,%xmm12,%xmm9
     c1d:	c5 32 59 e8          	vmulss %xmm0,%xmm9,%xmm13
     c21:	c5 7a 10 8f f4 69 18 	vmovss 0x1869f4(%rdi),%xmm9
     c28:	00 
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c29:	c4 41 32 5e e0       	vdivss %xmm8,%xmm9,%xmm12
     c2e:	c4 41 1a 58 c0       	vaddss %xmm8,%xmm12,%xmm8
     c33:	c5 3a 59 f8          	vmulss %xmm0,%xmm8,%xmm15
     c37:	c5 7a 10 87 f8 69 18 	vmovss 0x1869f8(%rdi),%xmm8
     c3e:	00 
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c3f:	c5 3a 5e e5          	vdivss %xmm5,%xmm8,%xmm12
     c43:	c5 1a 58 e5          	vaddss %xmm5,%xmm12,%xmm12
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c47:	c5 fa 10 af fc 69 18 	vmovss 0x1869fc(%rdi),%xmm5
     c4e:	00 
     c4f:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c53:	c4 41 52 5e f3       	vdivss %xmm11,%xmm5,%xmm14
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c58:	c4 41 0a 58 f3       	vaddss %xmm11,%xmm14,%xmm14
     c5d:	c4 41 2a 5e dd       	vdivss %xmm13,%xmm10,%xmm11
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c62:	c5 0a 59 f0          	vmulss %xmm0,%xmm14,%xmm14
     c66:	c4 41 22 58 ed       	vaddss %xmm13,%xmm11,%xmm13
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c6b:	c4 41 32 5e df       	vdivss %xmm15,%xmm9,%xmm11
     c70:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c74:	c4 41 22 58 df       	vaddss %xmm15,%xmm11,%xmm11
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c79:	c4 41 3a 5e fc       	vdivss %xmm12,%xmm8,%xmm15
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     c7e:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
     c82:	c4 41 02 58 e4       	vaddss %xmm12,%xmm15,%xmm12
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c87:	c4 41 52 5e fe       	vdivss %xmm14,%xmm5,%xmm15
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     c8c:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
     c90:	c4 41 02 58 fe       	vaddss %xmm14,%xmm15,%xmm15
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c95:	c4 41 2a 5e f5       	vdivss %xmm13,%xmm10,%xmm14
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     c9a:	c5 02 59 f8          	vmulss %xmm0,%xmm15,%xmm15
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     c9e:	c4 41 0a 58 f5       	vaddss %xmm13,%xmm14,%xmm14
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     ca3:	c4 41 32 5e eb       	vdivss %xmm11,%xmm9,%xmm13
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     ca8:	c5 0a 59 f0          	vmulss %xmm0,%xmm14,%xmm14
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     cac:	c4 41 12 58 eb       	vaddss %xmm11,%xmm13,%xmm13
     cb1:	c4 41 3a 5e dc       	vdivss %xmm12,%xmm8,%xmm11
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cb6:	c5 12 59 e8          	vmulss %xmm0,%xmm13,%xmm13
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     cba:	c4 41 22 58 e4       	vaddss %xmm12,%xmm11,%xmm12
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cbf:	c4 41 52 5e df       	vdivss %xmm15,%xmm5,%xmm11
     cc4:	c5 1a 59 e0          	vmulss %xmm0,%xmm12,%xmm12
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cc8:	c4 41 22 58 df       	vaddss %xmm15,%xmm11,%xmm11
     ccd:	c4 41 32 5e cd       	vdivss %xmm13,%xmm9,%xmm9
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cd2:	c5 22 59 d8          	vmulss %xmm0,%xmm11,%xmm11
     cd6:	c4 41 3a 5e c4       	vdivss %xmm12,%xmm8,%xmm8
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     cdb:	c4 41 32 58 cd       	vaddss %xmm13,%xmm9,%xmm9
     ce0:	c5 32 59 e8          	vmulss %xmm0,%xmm9,%xmm13
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     ce4:	c5 7a 11 6d a4       	vmovss %xmm13,-0x5c(%rbp)
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     ce9:	c4 c1 52 5e eb       	vdivss %xmm11,%xmm5,%xmm5
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cee:	c4 41 3a 58 c4       	vaddss %xmm12,%xmm8,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     cf3:	c5 3a 59 e8          	vmulss %xmm0,%xmm8,%xmm13
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     cf7:	c5 7a 11 6d a8       	vmovss %xmm13,-0x58(%rbp)
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     cfc:	c4 41 2a 5e d6       	vdivss %xmm14,%xmm10,%xmm10
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d01:	c4 c1 52 58 eb       	vaddss %xmm11,%xmm5,%xmm5
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d06:	c5 d2 59 e8          	vmulss %xmm0,%xmm5,%xmm5
     d0a:	c5 fa 11 6d ac       	vmovss %xmm5,-0x54(%rbp)
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d0f:	c4 41 2a 58 d6       	vaddss %xmm14,%xmm10,%xmm10
     d14:	c5 2a 59 f8          	vmulss %xmm0,%xmm10,%xmm15
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d18:	4c 89 c8             	mov    %r9,%rax
     d1b:	48 89 fa             	mov    %rdi,%rdx
     d1e:	66 90                	xchg   %ax,%ax
     d20:	c5 f8 28 68 fc       	vmovaps -0x4(%rax),%xmm5
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     d25:	c5 78 10 68 24       	vmovups 0x24(%rax),%xmm13
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d2a:	48 83 c2 40          	add    $0x40,%rdx
     d2e:	48 83 c0 40          	add    $0x40,%rax
     d32:	c5 78 10 60 c8       	vmovups -0x38(%rax),%xmm12
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
     d37:	c5 78 10 70 e0       	vmovups -0x20(%rax),%xmm14
     d3c:	c5 50 c6 40 cc 88    	vshufps $0x88,-0x34(%rax),%xmm5,%xmm8
     d42:	c5 f8 28 68 dc       	vmovaps -0x24(%rax),%xmm5
     d47:	c5 10 c6 48 f4 88    	vshufps $0x88,-0xc(%rax),%xmm13,%xmm9
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d4d:	c5 78 10 68 e8       	vmovups -0x18(%rax),%xmm13
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d52:	c5 18 c6 50 d8 88    	vshufps $0x88,-0x28(%rax),%xmm12,%xmm10
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d58:	c5 78 28 60 bc       	vmovaps -0x44(%rax),%xmm12
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d5d:	c5 d0 c6 40 ec 88    	vshufps $0x88,-0x14(%rax),%xmm5,%xmm0
     d63:	c5 f8 10 68 c0       	vmovups -0x40(%rax),%xmm5
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
     d68:	c5 18 c6 58 cc 88    	vshufps $0x88,-0x34(%rax),%xmm12,%xmm11
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
     d6e:	c5 78 10 60 c0       	vmovups -0x40(%rax),%xmm12
     d73:	c5 38 c6 c0 88       	vshufps $0x88,%xmm0,%xmm8,%xmm8
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
     d78:	c5 f8 10 40 e0       	vmovups -0x20(%rax),%xmm0
     d7d:	c5 d0 c6 68 d0 88    	vshufps $0x88,-0x30(%rax),%xmm5,%xmm5
    * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
     d83:	c4 c1 39 72 e0 01    	vpsrad $0x1,%xmm8,%xmm8
     d89:	c5 39 fe c7          	vpaddd %xmm7,%xmm8,%xmm8
     d8d:	c5 f8 c6 40 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm0
     d93:	c5 d0 c6 e8 88       	vshufps $0x88,%xmm0,%xmm5,%xmm5
     d98:	c5 f8 10 40 c4       	vmovups -0x3c(%rax),%xmm0
     d9d:	c5 d1 72 e5 01       	vpsrad $0x1,%xmm5,%xmm5
     da2:	c5 d1 fe ef          	vpaddd %xmm7,%xmm5,%xmm5
     da6:	c5 f8 c6 40 d4 88    	vshufps $0x88,-0x2c(%rax),%xmm0,%xmm0
     dac:	c4 c1 78 c6 c1 88    	vshufps $0x88,%xmm9,%xmm0,%xmm0
     db2:	c5 10 c6 48 f8 88    	vshufps $0x88,-0x8(%rax),%xmm13,%xmm9
     db8:	c5 78 28 68 dc       	vmovaps -0x24(%rax),%xmm13
     dbd:	c5 f9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm0
     dc2:	c5 f9 fe c7          	vpaddd %xmm7,%xmm0,%xmm0
     dc6:	c4 41 28 c6 d1 88    	vshufps $0x88,%xmm9,%xmm10,%xmm10
     dcc:	c5 10 c6 48 ec 88    	vshufps $0x88,-0x14(%rax),%xmm13,%xmm9
void measure_sqrt_time(void) {
     dd2:	c4 c1 29 72 e2 01    	vpsrad $0x1,%xmm10,%xmm10
     dd8:	c5 29 fe d7          	vpaddd %xmm7,%xmm10,%xmm10
     ddc:	c4 41 20 c6 c9 88    	vshufps $0x88,%xmm9,%xmm11,%xmm9
     de2:	c5 18 c6 58 d0 88    	vshufps $0x88,-0x30(%rax),%xmm12,%xmm11
     de8:	c4 41 30 5e e8       	vdivps %xmm8,%xmm9,%xmm13
     ded:	c4 41 10 58 c0       	vaddps %xmm8,%xmm13,%xmm8
     df2:	c5 38 59 ee          	vmulps %xmm6,%xmm8,%xmm13
     df6:	c5 08 c6 40 f0 88    	vshufps $0x88,-0x10(%rax),%xmm14,%xmm8
     dfc:	c4 41 20 c6 c0 88    	vshufps $0x88,%xmm8,%xmm11,%xmm8
     e02:	c5 38 5e e5          	vdivps %xmm5,%xmm8,%xmm12
     e06:	c5 98 58 ed          	vaddps %xmm5,%xmm12,%xmm5
     e0a:	c5 50 59 e6          	vmulps %xmm6,%xmm5,%xmm12
     e0e:	c5 f8 10 68 c4       	vmovups -0x3c(%rax),%xmm5
     e13:	c5 50 c6 58 d4 88    	vshufps $0x88,-0x2c(%rax),%xmm5,%xmm11
     e19:	c5 f8 10 68 e4       	vmovups -0x1c(%rax),%xmm5
     e1e:	c5 d0 c6 68 f4 88    	vshufps $0x88,-0xc(%rax),%xmm5,%xmm5
     e24:	c5 a0 c6 ed 88       	vshufps $0x88,%xmm5,%xmm11,%xmm5
      { return _M_insert(__n); }
     e29:	c5 50 5e d8          	vdivps %xmm0,%xmm5,%xmm11
     e2d:	c5 a0 58 c0          	vaddps %xmm0,%xmm11,%xmm0
     e31:	c5 78 59 de          	vmulps %xmm6,%xmm0,%xmm11
     e35:	c5 f8 10 40 c8       	vmovups -0x38(%rax),%xmm0
     e3a:	c5 78 c6 70 d8 88    	vshufps $0x88,-0x28(%rax),%xmm0,%xmm14
	__ostream_insert(__out, __s,
     e40:	c5 f8 10 40 e8       	vmovups -0x18(%rax),%xmm0
     e45:	c5 f8 c6 40 f8 88    	vshufps $0x88,-0x8(%rax),%xmm0,%xmm0
     e4b:	c5 88 c6 c0 88       	vshufps $0x88,%xmm0,%xmm14,%xmm0
      { return _M_insert(__n); }
     e50:	c4 41 78 5e f2       	vdivps %xmm10,%xmm0,%xmm14
	__ostream_insert(__out, __s,
     e55:	c4 41 08 58 d2       	vaddps %xmm10,%xmm14,%xmm10
     e5a:	c4 41 30 5e f5       	vdivps %xmm13,%xmm9,%xmm14
    { return flush(__os.put(__os.widen('\n'))); }
     e5f:	c5 28 59 d6          	vmulps %xmm6,%xmm10,%xmm10
      { return __check_facet(_M_ctype).widen(__c); }
     e63:	c4 41 08 58 ed       	vaddps %xmm13,%xmm14,%xmm13
     e68:	c4 41 38 5e f4       	vdivps %xmm12,%xmm8,%xmm14
     e6d:	c5 10 59 ee          	vmulps %xmm6,%xmm13,%xmm13
      if (!__f)
     e71:	c4 41 08 58 e4       	vaddps %xmm12,%xmm14,%xmm12
     e76:	c4 41 50 5e f3       	vdivps %xmm11,%xmm5,%xmm14
     e7b:	c5 18 59 e6          	vmulps %xmm6,%xmm12,%xmm12
     e7f:	c4 41 08 58 db       	vaddps %xmm11,%xmm14,%xmm11
     e84:	c4 41 78 5e f2       	vdivps %xmm10,%xmm0,%xmm14
     e89:	c5 20 59 de          	vmulps %xmm6,%xmm11,%xmm11
    { return __os.flush(); }
     e8d:	c4 41 08 58 d2       	vaddps %xmm10,%xmm14,%xmm10
     e92:	c4 41 30 5e f5       	vdivps %xmm13,%xmm9,%xmm14
	__ostream_insert(__out, __s,
     e97:	c5 28 59 d6          	vmulps %xmm6,%xmm10,%xmm10
     e9b:	c4 41 08 58 ed       	vaddps %xmm13,%xmm14,%xmm13
     ea0:	c4 41 38 5e f4       	vdivps %xmm12,%xmm8,%xmm14
     ea5:	c5 10 59 ee          	vmulps %xmm6,%xmm13,%xmm13
     ea9:	c4 41 08 58 e4       	vaddps %xmm12,%xmm14,%xmm12
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
     eae:	c4 41 50 5e f3       	vdivps %xmm11,%xmm5,%xmm14
     eb3:	c5 18 59 e6          	vmulps %xmm6,%xmm12,%xmm12
     eb7:	c4 41 08 58 db       	vaddps %xmm11,%xmm14,%xmm11
     ebc:	c4 41 78 5e f2       	vdivps %xmm10,%xmm0,%xmm14
     ec1:	c5 20 59 de          	vmulps %xmm6,%xmm11,%xmm11
     ec5:	c4 41 08 58 d2       	vaddps %xmm10,%xmm14,%xmm10
     eca:	c4 41 30 5e cd       	vdivps %xmm13,%xmm9,%xmm9
     ecf:	c5 28 59 d6          	vmulps %xmm6,%xmm10,%xmm10
     ed3:	c4 41 38 5e c4       	vdivps %xmm12,%xmm8,%xmm8
    { return flush(__os.put(__os.widen('\n'))); }
     ed8:	c4 41 30 58 cd       	vaddps %xmm13,%xmm9,%xmm9
      { return __check_facet(_M_ctype).widen(__c); }
     edd:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
     ee1:	c4 c1 78 5e c2       	vdivps %xmm10,%xmm0,%xmm0
      if (!__f)
     ee6:	c4 41 38 58 c4       	vaddps %xmm12,%xmm8,%xmm8
     eeb:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
     eef:	c4 c1 50 5e eb       	vdivps %xmm11,%xmm5,%xmm5
     ef4:	c4 c1 78 58 c2       	vaddps %xmm10,%xmm0,%xmm0
     ef9:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
     efd:	c4 c1 50 58 eb       	vaddps %xmm11,%xmm5,%xmm5
     f02:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
     f06:	c5 30 14 d5          	vunpcklps %xmm5,%xmm9,%xmm10
     f0a:	c5 b0 15 ed          	vunpckhps %xmm5,%xmm9,%xmm5
     f0e:	c5 38 14 c8          	vunpcklps %xmm0,%xmm8,%xmm9
     f12:	c5 b8 15 c0          	vunpckhps %xmm0,%xmm8,%xmm0
    { return __os.flush(); }
     f16:	c4 41 28 14 c1       	vunpcklps %xmm9,%xmm10,%xmm8
     f1b:	c4 41 28 15 d1       	vunpckhps %xmm9,%xmm10,%xmm10
       floats[i] = random_double();
     f20:	c5 78 29 42 c0       	vmovaps %xmm8,-0x40(%rdx)
     f25:	c5 50 14 c0          	vunpcklps %xmm0,%xmm5,%xmm8
     f29:	c5 d0 15 e8          	vunpckhps %xmm0,%xmm5,%xmm5
     f2d:	c5 78 29 52 d0       	vmovaps %xmm10,-0x30(%rdx)
     f32:	c5 78 29 42 e0       	vmovaps %xmm8,-0x20(%rdx)
    for (int i = 0; i < 4 * N; i++) {
     f37:	c5 f8 29 6a f0       	vmovaps %xmm5,-0x10(%rdx)
	__ostream_insert(__out, __s,
     f3c:	48 39 d1             	cmp    %rdx,%rcx
     f3f:	0f 85 db fd ff ff    	jne    d20 <_Z17measure_sqrt_timeILy4EEvv+0xd20>
     f45:	c5 fa 10 6d b4       	vmovss -0x4c(%rbp),%xmm5
     f4a:	41 ff c8             	dec    %r8d
     f4d:	c5 fa 11 a7 c0 34 0c 	vmovss %xmm4,0xc34c0(%rdi)
     f54:	00 
    { return flush(__os.put(__os.widen('\n'))); }
     f55:	c5 fa 11 9f c4 34 0c 	vmovss %xmm3,0xc34c4(%rdi)
     f5c:	00 
     f5d:	c5 fa 11 97 c8 34 0c 	vmovss %xmm2,0xc34c8(%rdi)
     f64:	00 
      { return __check_facet(_M_ctype).widen(__c); }
     f65:	c5 fa 11 8f cc 34 0c 	vmovss %xmm1,0xc34cc(%rdi)
     f6c:	00 
      if (!__f)
     f6d:	c5 7a 11 bf f0 34 0c 	vmovss %xmm15,0xc34f0(%rdi)
     f74:	00 
     f75:	c5 fa 11 af d0 34 0c 	vmovss %xmm5,0xc34d0(%rdi)
     f7c:	00 
     f7d:	c5 fa 10 6d c0       	vmovss -0x40(%rbp),%xmm5
     f82:	c5 fa 11 af d4 34 0c 	vmovss %xmm5,0xc34d4(%rdi)
     f89:	00 
     f8a:	c5 fa 10 6d c8       	vmovss -0x38(%rbp),%xmm5
    { return __os.flush(); }
     f8f:	c5 fa 11 af d8 34 0c 	vmovss %xmm5,0xc34d8(%rdi)
     f96:	00 
     f97:	c5 fa 10 6d c4       	vmovss -0x3c(%rbp),%xmm5
     f9c:	c5 fa 11 af dc 34 0c 	vmovss %xmm5,0xc34dc(%rdi)
     fa3:	00 
     fa4:	c5 fa 10 6d b8       	vmovss -0x48(%rbp),%xmm5
     fa9:	c5 fa 11 af e0 34 0c 	vmovss %xmm5,0xc34e0(%rdi)
     fb0:	00 
     fb1:	c5 fa 10 6d bc       	vmovss -0x44(%rbp),%xmm5
     fb6:	c5 fa 11 af e4 34 0c 	vmovss %xmm5,0xc34e4(%rdi)
     fbd:	00 
     fbe:	c5 fa 10 6d b0       	vmovss -0x50(%rbp),%xmm5
          roots[i + k] = sqrt(floats[i + k]);
     fc3:	c5 fa 11 af e8 34 0c 	vmovss %xmm5,0xc34e8(%rdi)
     fca:	00 
     fcb:	c5 fa 10 6d cc       	vmovss -0x34(%rbp),%xmm5
     fd0:	c5 fa 11 af ec 34 0c 	vmovss %xmm5,0xc34ec(%rdi)
     fd7:	00 
     fd8:	c5 fa 10 6d a4       	vmovss -0x5c(%rbp),%xmm5
     fdd:	c5 fa 11 af f4 34 0c 	vmovss %xmm5,0xc34f4(%rdi)
     fe4:	00 
     fe5:	c5 fa 10 6d a8       	vmovss -0x58(%rbp),%xmm5
     fea:	c5 fa 11 af f8 34 0c 	vmovss %xmm5,0xc34f8(%rdi)
     ff1:	00 
     ff2:	c5 fa 10 6d ac       	vmovss -0x54(%rbp),%xmm5
     ff7:	c5 fa 11 af fc 34 0c 	vmovss %xmm5,0xc34fc(%rdi)
     ffe:	00 
     fff:	0f 85 13 fd ff ff    	jne    d18 <_Z17measure_sqrt_timeILy4EEvv+0xd18>
    1005:	e8 00 00 00 00       	callq  100a <_Z17measure_sqrt_timeILy4EEvv+0x100a>
    100a:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    1011:	9b c4 20 
    1014:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1018:	48 29 d8             	sub    %rbx,%rax
    101b:	48 89 c1             	mov    %rax,%rcx
    101e:	48 f7 ea             	imul   %rdx
    1021:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1025:	48 c1 fa 07          	sar    $0x7,%rdx
    1029:	48 29 ca             	sub    %rcx,%rdx
    102c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1033 <_Z17measure_sqrt_timeILy4EEvv+0x1033>
    1033:	e8 00 00 00 00       	callq  1038 <_Z17measure_sqrt_timeILy4EEvv+0x1038>
    1038:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    103e:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 1079 <_Z17measure_sqrt_timeILy4EEvv+0x1079>
    1045:	48 89 c6             	mov    %rax,%rsi
    1048:	48 89 c1             	mov    %rax,%rcx
    104b:	e8 00 00 00 00       	callq  1050 <_Z17measure_sqrt_timeILy4EEvv+0x1050>
    1050:	48 8b 06             	mov    (%rsi),%rax
    1053:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1057:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    105e:	00 
    105f:	48 85 db             	test   %rbx,%rbx
    1062:	0f 84 2d f2 ff ff    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
	__throw_bad_cast();
    1068:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    106c:	0f 84 e9 02 00 00    	je     135b <_Z17measure_sqrt_timeILy4EEvv+0x135b>
    for (int j = 0; j < LOOP; j++) {
    1072:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    1076:	48 89 f1             	mov    %rsi,%rcx
       end = steady_clock::now();
    1079:	e8 00 00 00 00       	callq  107e <_Z17measure_sqrt_timeILy4EEvv+0x107e>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    107e:	48 89 c1             	mov    %rax,%rcx
    1081:	e8 00 00 00 00       	callq  1086 <_Z17measure_sqrt_timeILy4EEvv+0x1086>
    1086:	e8 00 00 00 00       	callq  108b <_Z17measure_sqrt_timeILy4EEvv+0x108b>
    108b:	ba e8 03 00 00       	mov    $0x3e8,%edx
    1090:	48 89 c6             	mov    %rax,%rsi
    1093:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1097:	31 c0                	xor    %eax,%eax
    1099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      { return _M_insert(__n); }
    10a0:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
    10a7:	48 83 c0 10          	add    $0x10,%rax
    10ab:	c5 e9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm2
	__ostream_insert(__out, __s,
    10b0:	c5 e9 fe cf          	vpaddd %xmm7,%xmm2,%xmm1
    10b4:	c5 f8 5e d1          	vdivps %xmm1,%xmm0,%xmm2
    10b8:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
    10bc:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
    10c0:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
    { return flush(__os.put(__os.widen('\n'))); }
    10c4:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
      { return __check_facet(_M_ctype).widen(__c); }
    10c8:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
    10cc:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
    10d0:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
      if (!__f)
    10d4:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
    10d8:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
    10dc:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
    10e0:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
    10e4:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
    10ea:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
    { return __os.flush(); }
    10f0:	75 ae                	jne    10a0 <_Z17measure_sqrt_timeILy4EEvv+0x10a0>
    10f2:	ff ca                	dec    %edx
    10f4:	75 a1                	jne    1097 <_Z17measure_sqrt_timeILy4EEvv+0x1097>
	__ostream_insert(__out, __s,
    10f6:	e8 00 00 00 00       	callq  10fb <_Z17measure_sqrt_timeILy4EEvv+0x10fb>
    10fb:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1102 <_Z17measure_sqrt_timeILy4EEvv+0x1102>
    1102:	41 b8 34 00 00 00    	mov    $0x34,%r8d
    1108:	48 8d 15 e8 00 00 00 	lea    0xe8(%rip),%rdx        # 11f7 <_Z17measure_sqrt_timeILy4EEvv+0x11f7>
    { return flush(__os.put(__os.widen('\n'))); }
    110f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
      { return __check_facet(_M_ctype).widen(__c); }
    1113:	48 29 f0             	sub    %rsi,%rax
    1116:	48 89 c3             	mov    %rax,%rbx
    1119:	e8 00 00 00 00       	callq  111e <_Z17measure_sqrt_timeILy4EEvv+0x111e>
    111e:	49 8b 04 24          	mov    (%r12),%rax
      if (!__f)
    1122:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1126:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
    112d:	00 
    112e:	48 85 f6             	test   %rsi,%rsi
    1131:	0f 84 5e f1 ff ff    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
    1137:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    113b:	0f 84 0f 03 00 00    	je     1450 <_Z17measure_sqrt_timeILy4EEvv+0x1450>
    1141:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    { return __os.flush(); }
    1145:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 114c <_Z17measure_sqrt_timeILy4EEvv+0x114c>
       start = steady_clock::now();
    114c:	e8 00 00 00 00       	callq  1151 <_Z17measure_sqrt_timeILy4EEvv+0x1151>
    1151:	48 89 c1             	mov    %rax,%rcx
    1154:	e8 00 00 00 00       	callq  1159 <_Z17measure_sqrt_timeILy4EEvv+0x1159>
    1159:	48 89 d8             	mov    %rbx,%rax
    115c:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
    1163:	9b c4 20 
    1166:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 116d <_Z17measure_sqrt_timeILy4EEvv+0x116d>
    116d:	48 c1 fb 3f          	sar    $0x3f,%rbx
    1171:	48 f7 ea             	imul   %rdx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    1174:	48 c1 fa 07          	sar    $0x7,%rdx
    1178:	48 29 da             	sub    %rbx,%rdx
    117b:	e8 00 00 00 00       	callq  1180 <_Z17measure_sqrt_timeILy4EEvv+0x1180>
    1180:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    root = 0.5 * (root + (* a / root));
    1186:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 11c1 <_Z17measure_sqrt_timeILy4EEvv+0x11c1>
    118d:	48 89 c6             	mov    %rax,%rsi
    1190:	48 89 c1             	mov    %rax,%rcx
    1193:	e8 00 00 00 00       	callq  1198 <_Z17measure_sqrt_timeILy4EEvv+0x1198>
    1198:	48 8b 06             	mov    (%rsi),%rax
    119b:	48 8b 40 e8          	mov    -0x18(%rax),%rax
        roots[i] = sqrt1<LOOPS>(floats + i);
    119f:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
    11a6:	00 
    11a7:	48 85 db             	test   %rbx,%rbx
    11aa:	0f 84 e5 f0 ff ff    	je     295 <_Z17measure_sqrt_timeILy4EEvv+0x295>
       end = steady_clock::now();
    11b0:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    11b4:	0f 84 65 02 00 00    	je     141f <_Z17measure_sqrt_timeILy4EEvv+0x141f>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    11ba:	0f be 53 43          	movsbl 0x43(%rbx),%edx
    11be:	48 89 f1             	mov    %rsi,%rcx
    11c1:	e8 00 00 00 00       	callq  11c6 <_Z17measure_sqrt_timeILy4EEvv+0x11c6>
    11c6:	90                   	nop
    11c7:	c5 f8 28 75 f0       	vmovaps -0x10(%rbp),%xmm6
    11cc:	c5 f8 28 7d 00       	vmovaps 0x0(%rbp),%xmm7
    11d1:	c5 78 28 45 10       	vmovaps 0x10(%rbp),%xmm8
    11d6:	48 89 c1             	mov    %rax,%rcx
      { return _M_insert(__n); }
    11d9:	c5 78 28 4d 20       	vmovaps 0x20(%rbp),%xmm9
    11de:	c5 78 28 55 30       	vmovaps 0x30(%rbp),%xmm10
	__ostream_insert(__out, __s,
    11e3:	c5 78 28 5d 40       	vmovaps 0x40(%rbp),%xmm11
    11e8:	c5 78 28 65 50       	vmovaps 0x50(%rbp),%xmm12
    11ed:	c5 78 28 6d 60       	vmovaps 0x60(%rbp),%xmm13
      { return _M_insert(__n); }
    11f2:	c5 78 28 75 70       	vmovaps 0x70(%rbp),%xmm14
	__ostream_insert(__out, __s,
    11f7:	c5 78 28 bd 80 00 00 	vmovaps 0x80(%rbp),%xmm15
    11fe:	00 
      { return __check_facet(_M_ctype).widen(__c); }
    11ff:	48 8d a5 98 00 00 00 	lea    0x98(%rbp),%rsp
    1206:	5b                   	pop    %rbx
    1207:	5e                   	pop    %rsi
    1208:	5f                   	pop    %rdi
    1209:	41 5c                	pop    %r12
      if (!__f)
    120b:	41 5d                	pop    %r13
    120d:	41 5e                	pop    %r14
    120f:	41 5f                	pop    %r15
    1211:	5d                   	pop    %rbp
    1212:	e9 00 00 00 00       	jmpq   1217 <_Z17measure_sqrt_timeILy4EEvv+0x1217>
    1217:	e8 00 00 00 00       	callq  121c <_Z17measure_sqrt_timeILy4EEvv+0x121c>
    121c:	e9 3a f0 ff ff       	jmpq   25b <_Z17measure_sqrt_timeILy4EEvv+0x25b>
    { return flush(__os.put(__os.widen('\n'))); }
    1221:	e8 00 00 00 00       	callq  1226 <_Z17measure_sqrt_timeILy4EEvv+0x1226>
    1226:	e9 0c f0 ff ff       	jmpq   237 <_Z17measure_sqrt_timeILy4EEvv+0x237>
    { return __os.flush(); }
    122b:	e8 00 00 00 00       	callq  1230 <_Z17measure_sqrt_timeILy4EEvv+0x1230>
    1230:	e9 de ef ff ff       	jmpq   213 <_Z17measure_sqrt_timeILy4EEvv+0x213>
	__ostream_insert(__out, __s,
    1235:	48 89 d9             	mov    %rbx,%rcx
    1238:	e8 00 00 00 00       	callq  123d <_Z17measure_sqrt_timeILy4EEvv+0x123d>
    123d:	48 8b 03             	mov    (%rbx),%rax
    1240:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1247 <_Z17measure_sqrt_timeILy4EEvv+0x1247>
    1247:	ba 0a 00 00 00       	mov    $0xa,%edx
    { return flush(__os.put(__os.widen('\n'))); }
    124c:	48 8b 40 30          	mov    0x30(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
    1250:	48 39 c8             	cmp    %rcx,%rax
    1253:	0f 84 d7 ee ff ff    	je     130 <_Z17measure_sqrt_timeILy4EEvv+0x130>
    1259:	48 89 d9             	mov    %rbx,%rcx
      if (!__f)
    125c:	ff d0                	callq  *%rax
    125e:	0f be d0             	movsbl %al,%edx
    1261:	e9 ca ee ff ff       	jmpq   130 <_Z17measure_sqrt_timeILy4EEvv+0x130>
    1266:	48 89 d9             	mov    %rbx,%rcx
    1269:	e8 00 00 00 00       	callq  126e <_Z17measure_sqrt_timeILy4EEvv+0x126e>
    126e:	48 8b 03             	mov    (%rbx),%rax
    1271:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1278 <_Z17measure_sqrt_timeILy4EEvv+0x1278>
    1278:	ba 0a 00 00 00       	mov    $0xa,%edx
    { return __os.flush(); }
    127d:	48 8b 40 30          	mov    0x30(%rax),%rax
    1281:	48 39 c8             	cmp    %rcx,%rax
    1284:	0f 84 2e ee ff ff    	je     b8 <_Z17measure_sqrt_timeILy4EEvv+0xb8>
       start = steady_clock::now();
    128a:	48 89 d9             	mov    %rbx,%rcx
    128d:	ff d0                	callq  *%rax
    128f:	0f be d0             	movsbl %al,%edx
    1292:	e9 21 ee ff ff       	jmpq   b8 <_Z17measure_sqrt_timeILy4EEvv+0xb8>
    1297:	48 89 d9             	mov    %rbx,%rcx
    129a:	e8 00 00 00 00       	callq  129f <_Z17measure_sqrt_timeILy4EEvv+0x129f>
    129f:	48 8b 03             	mov    (%rbx),%rax
    12a2:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 12a9 <_Z17measure_sqrt_timeILy4EEvv+0x12a9>
    12a9:	ba 0a 00 00 00       	mov    $0xa,%edx
    12ae:	48 8b 40 30          	mov    0x30(%rax),%rax
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    12b2:	48 39 c8             	cmp    %rcx,%rax
    12b5:	0f 84 f9 ee ff ff    	je     1b4 <_Z17measure_sqrt_timeILy4EEvv+0x1b4>
    12bb:	48 89 d9             	mov    %rbx,%rcx
    12be:	ff d0                	callq  *%rax
    12c0:	0f be d0             	movsbl %al,%edx
    12c3:	e9 ec ee ff ff       	jmpq   1b4 <_Z17measure_sqrt_timeILy4EEvv+0x1b4>
    12c8:	48 89 f1             	mov    %rsi,%rcx
    12cb:	e8 00 00 00 00       	callq  12d0 <_Z17measure_sqrt_timeILy4EEvv+0x12d0>
    12d0:	48 8b 06             	mov    (%rsi),%rax
    12d3:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 12da <_Z17measure_sqrt_timeILy4EEvv+0x12da>
    12da:	ba 0a 00 00 00       	mov    $0xa,%edx
    12df:	48 8b 40 30          	mov    0x30(%rax),%rax
    12e3:	48 39 c8             	cmp    %rcx,%rax
    12e6:	0f 84 7a f0 ff ff    	je     366 <_Z17measure_sqrt_timeILy4EEvv+0x366>
    12ec:	48 89 f1             	mov    %rsi,%rcx
    12ef:	ff d0                	callq  *%rax
    12f1:	0f be d0             	movsbl %al,%edx
    12f4:	e9 6d f0 ff ff       	jmpq   366 <_Z17measure_sqrt_timeILy4EEvv+0x366>
    root = 0.5 * (root + (* a / root));
    12f9:	48 89 f1             	mov    %rsi,%rcx
    12fc:	e8 00 00 00 00       	callq  1301 <_Z17measure_sqrt_timeILy4EEvv+0x1301>
    1301:	48 8b 06             	mov    (%rsi),%rax
    1304:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 130b <_Z17measure_sqrt_timeILy4EEvv+0x130b>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    130b:	ba 0a 00 00 00       	mov    $0xa,%edx
    1310:	48 8b 40 30          	mov    0x30(%rax),%rax
    root = 0.5 * (root + (* a / root));
    1314:	48 39 c8             	cmp    %rcx,%rax
    1317:	0f 84 9a f1 ff ff    	je     4b7 <_Z17measure_sqrt_timeILy4EEvv+0x4b7>
    131d:	48 89 f1             	mov    %rsi,%rcx
    1320:	ff d0                	callq  *%rax
    1322:	0f be d0             	movsbl %al,%edx
    1325:	e9 8d f1 ff ff       	jmpq   4b7 <_Z17measure_sqrt_timeILy4EEvv+0x4b7>
    132a:	48 89 d9             	mov    %rbx,%rcx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    132d:	e8 00 00 00 00       	callq  1332 <_Z17measure_sqrt_timeILy4EEvv+0x1332>
    1332:	48 8b 03             	mov    (%rbx),%rax
    root = 0.5 * (root + (* a / root));
    1335:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 133c <_Z17measure_sqrt_timeILy4EEvv+0x133c>
    133c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1341:	48 8b 40 30          	mov    0x30(%rax),%rax
    1345:	48 39 c8             	cmp    %rcx,%rax
    1348:	0f 84 bb f3 ff ff    	je     709 <_Z17measure_sqrt_timeILy4EEvv+0x709>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
    134e:	48 89 d9             	mov    %rbx,%rcx
    1351:	ff d0                	callq  *%rax
    1353:	0f be d0             	movsbl %al,%edx
    root = 0.5 * (root + (* a / root));
    1356:	e9 ae f3 ff ff       	jmpq   709 <_Z17measure_sqrt_timeILy4EEvv+0x709>
    135b:	48 89 d9             	mov    %rbx,%rcx
    135e:	e8 00 00 00 00       	callq  1363 <_Z17measure_sqrt_timeILy4EEvv+0x1363>
    1363:	48 8b 03             	mov    (%rbx),%rax
    1366:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 136d <_Z17measure_sqrt_timeILy4EEvv+0x136d>
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
    136d:	ba 0a 00 00 00       	mov    $0xa,%edx
    1372:	48 8b 40 30          	mov    0x30(%rax),%rax
    1376:	48 39 c8             	cmp    %rcx,%rax
    1379:	0f 84 f7 fc ff ff    	je     1076 <_Z17measure_sqrt_timeILy4EEvv+0x1076>
    137f:	48 89 d9             	mov    %rbx,%rcx
    1382:	ff d0                	callq  *%rax
    1384:	0f be d0             	movsbl %al,%edx
    1387:	e9 ea fc ff ff       	jmpq   1076 <_Z17measure_sqrt_timeILy4EEvv+0x1076>
    138c:	48 89 f1             	mov    %rsi,%rcx
    138f:	e8 00 00 00 00       	callq  1394 <_Z17measure_sqrt_timeILy4EEvv+0x1394>
    1394:	48 8b 06             	mov    (%rsi),%rax
    1397:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 139e <_Z17measure_sqrt_timeILy4EEvv+0x139e>
    139e:	ba 0a 00 00 00       	mov    $0xa,%edx
    13a3:	48 8b 40 30          	mov    0x30(%rax),%rax
    13a7:	48 39 c8             	cmp    %rcx,%rax
    13aa:	0f 84 b7 f0 ff ff    	je     467 <_Z17measure_sqrt_timeILy4EEvv+0x467>
    for (int j = 0; j < LOOP; j++) {
    13b0:	48 89 f1             	mov    %rsi,%rcx
    13b3:	ff d0                	callq  *%rax
    13b5:	0f be d0             	movsbl %al,%edx
       end = steady_clock::now();
    13b8:	e9 aa f0 ff ff       	jmpq   467 <_Z17measure_sqrt_timeILy4EEvv+0x467>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
    13bd:	48 89 d9             	mov    %rbx,%rcx
    13c0:	e8 00 00 00 00       	callq  13c5 <_Z17measure_sqrt_timeILy4EEvv+0x13c5>
    13c5:	48 8b 03             	mov    (%rbx),%rax
    13c8:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 13cf <_Z17measure_sqrt_timeILy4EEvv+0x13cf>
    13cf:	ba 0a 00 00 00       	mov    $0xa,%edx
    13d4:	48 8b 40 30          	mov    0x30(%rax),%rax
    13d8:	48 39 c8             	cmp    %rcx,%rax
    13db:	0f 84 d8 f2 ff ff    	je     6b9 <_Z17measure_sqrt_timeILy4EEvv+0x6b9>
      { return _M_insert(__n); }
    13e1:	48 89 d9             	mov    %rbx,%rcx
    13e4:	ff d0                	callq  *%rax
    13e6:	0f be d0             	movsbl %al,%edx
	__ostream_insert(__out, __s,
    13e9:	e9 cb f2 ff ff       	jmpq   6b9 <_Z17measure_sqrt_timeILy4EEvv+0x6b9>
    13ee:	48 89 f1             	mov    %rsi,%rcx
    13f1:	e8 00 00 00 00       	callq  13f6 <_Z17measure_sqrt_timeILy4EEvv+0x13f6>
      { return _M_insert(__n); }
    13f6:	48 8b 06             	mov    (%rsi),%rax
	__ostream_insert(__out, __s,
    13f9:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1400 <_Z17measure_sqrt_timeILy4EEvv+0x1400>
    1400:	ba 0a 00 00 00       	mov    $0xa,%edx
      { return __check_facet(_M_ctype).widen(__c); }
    1405:	48 8b 40 30          	mov    0x30(%rax),%rax
    1409:	48 39 c8             	cmp    %rcx,%rax
    140c:	0f 84 04 ef ff ff    	je     316 <_Z17measure_sqrt_timeILy4EEvv+0x316>
      if (!__f)
    1412:	48 89 f1             	mov    %rsi,%rcx
    1415:	ff d0                	callq  *%rax
    1417:	0f be d0             	movsbl %al,%edx
    141a:	e9 f7 ee ff ff       	jmpq   316 <_Z17measure_sqrt_timeILy4EEvv+0x316>
    141f:	48 89 d9             	mov    %rbx,%rcx
    1422:	e8 00 00 00 00       	callq  1427 <_Z17measure_sqrt_timeILy4EEvv+0x1427>
    { return flush(__os.put(__os.widen('\n'))); }
    1427:	48 8b 03             	mov    (%rbx),%rax
    142a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1431 <_Z17measure_sqrt_timeILy4EEvv+0x1431>
    { return __os.flush(); }
    1431:	ba 0a 00 00 00       	mov    $0xa,%edx
    1436:	48 8b 40 30          	mov    0x30(%rax),%rax
	__ostream_insert(__out, __s,
    143a:	48 39 c8             	cmp    %rcx,%rax
    143d:	0f 84 7b fd ff ff    	je     11be <_Z17measure_sqrt_timeILy4EEvv+0x11be>
    1443:	48 89 d9             	mov    %rbx,%rcx
    1446:	ff d0                	callq  *%rax
    1448:	0f be d0             	movsbl %al,%edx
    144b:	e9 6e fd ff ff       	jmpq   11be <_Z17measure_sqrt_timeILy4EEvv+0x11be>
    { return flush(__os.put(__os.widen('\n'))); }
    1450:	48 89 f1             	mov    %rsi,%rcx
    1453:	e8 00 00 00 00       	callq  1458 <_Z17measure_sqrt_timeILy4EEvv+0x1458>
      { return __check_facet(_M_ctype).widen(__c); }
    1458:	48 8b 06             	mov    (%rsi),%rax
    145b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1462 <_Z17measure_sqrt_timeILy4EEvv+0x1462>
      if (!__f)
    1462:	ba 0a 00 00 00       	mov    $0xa,%edx
    1467:	48 8b 40 30          	mov    0x30(%rax),%rax
    146b:	48 39 c8             	cmp    %rcx,%rax
    146e:	0f 84 d1 fc ff ff    	je     1145 <_Z17measure_sqrt_timeILy4EEvv+0x1145>
    1474:	48 89 f1             	mov    %rsi,%rcx
    1477:	ff d0                	callq  *%rax
    1479:	0f be d0             	movsbl %al,%edx
    147c:	e9 c4 fc ff ff       	jmpq   1145 <_Z17measure_sqrt_timeILy4EEvv+0x1145>
    1481:	90                   	nop
    1482:	90                   	nop
    { return __os.flush(); }
    1483:	90                   	nop
    1484:	90                   	nop
    1485:	90                   	nop
    1486:	90                   	nop
    1487:	90                   	nop
    1488:	90                   	nop
    1489:	90                   	nop
    148a:	90                   	nop
       start = steady_clock::now();
    148b:	90                   	nop
    148c:	90                   	nop
    148d:	90                   	nop
    148e:	90                   	nop
    148f:	90                   	nop

Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	48 83 ec 28          	sub    $0x28,%rsp
   4:	e8 00 00 00 00       	callq  9 <main+0x9>
   9:	e8 00 00 00 00       	callq  e <main+0xe>
   e:	e8 00 00 00 00       	callq  13 <main+0x13>
{
  13:	e8 00 00 00 00       	callq  18 <main+0x18>
  18:	31 c0                	xor    %eax,%eax
  1a:	48 83 c4 28          	add    $0x28,%rsp
  static std::random_device device;
  1e:	c3                   	retq   
  1f:	90                   	nop

0000000000000020 <_GLOBAL__sub_I__Z13random_doublev>:
  20:	48 83 ec 28          	sub    $0x28,%rsp
  24:	48 8d 0d 08 0a 00 00 	lea    0xa08(%rip),%rcx        # a33 <_ZStL8__ioinit+0x2b>
  2b:	e8 00 00 00 00       	callq  30 <_GLOBAL__sub_I__Z13random_doublev+0x10>
  30:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 37 <_GLOBAL__sub_I__Z13random_doublev+0x17>
  37:	48 83 c4 28          	add    $0x28,%rsp
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  3b:	e9 00 00 00 00       	jmpq   40 <_ZZ13random_doublevE6device>
