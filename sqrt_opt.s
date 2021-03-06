
sqrt_opt.o:     file format pe-x86-64


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
   c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
{
  13:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  1a:	00 
  1b:	c5 f8 29 75 d0       	vmovaps %xmm6,-0x30(%rbp)
  static std::random_device device;
  20:	c5 f8 29 7d e0       	vmovaps %xmm7,-0x20(%rbp)
  25:	c5 78 29 45 f0       	vmovaps %xmm8,-0x10(%rbp)
  2a:	c5 78 29 4d 00       	vmovaps %xmm9,0x0(%rbp)
  2f:	c5 78 29 55 10       	vmovaps %xmm10,0x10(%rbp)
  34:	b8 80 6a 18 00       	mov    $0x186a80,%eax
  39:	e8 00 00 00 00       	callq  3e <_Z17measure_sqrt_timeILy2EEvv+0x3e>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  3e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 45 <_Z17measure_sqrt_timeILy2EEvv+0x45>
  45:	ba 02 00 00 00       	mov    $0x2,%edx
      return this->_M_getval_pretr1();
  4a:	48 29 c4             	sub    %rax,%rsp
  4d:	e8 00 00 00 00       	callq  52 <_Z17measure_sqrt_timeILy2EEvv+0x52>
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  52:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  58:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 5f <_Z17measure_sqrt_timeILy2EEvv+0x5f>
  5f:	4c 8d ac 24 9f 00 00 	lea    0x9f(%rsp),%r13
  66:	00 
  67:	48 89 c6             	mov    %rax,%rsi
  6a:	48 89 c1             	mov    %rax,%rcx
  6d:	49 83 e5 80          	and    $0xffffffffffffff80,%r13
  71:	e8 00 00 00 00       	callq  76 <_Z17measure_sqrt_timeILy2EEvv+0x76>
  76:	48 8b 06             	mov    (%rsi),%rax
  79:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  7d:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  84:	00 
      __ret = __sum / __tmp;
  85:	48 85 db             	test   %rbx,%rbx
  88:	0f 84 e7 01 00 00    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
      if (__builtin_expect(__ret >= _RealType(1), 0))
  8e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  92:	0f 84 37 09 00 00    	je     9cf <_Z17measure_sqrt_timeILy2EEvv+0x9cf>
  98:	0f be 53 43          	movsbl 0x43(%rbx),%edx
  9c:	48 89 f1             	mov    %rsi,%rcx
  9f:	e8 00 00 00 00       	callq  a4 <_Z17measure_sqrt_timeILy2EEvv+0xa4>
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
  a4:	48 89 c1             	mov    %rax,%rcx
  a7:	e8 00 00 00 00       	callq  ac <_Z17measure_sqrt_timeILy2EEvv+0xac>
}
  ac:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # b3 <_Z17measure_sqrt_timeILy2EEvv+0xb3>
  b3:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  b9:	48 8d 15 0c 00 00 00 	lea    0xc(%rip),%rdx        # cc <_Z17measure_sqrt_timeILy2EEvv+0xcc>
  c0:	e8 00 00 00 00       	callq  c5 <_Z17measure_sqrt_timeILy2EEvv+0xc5>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  c5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cc <_Z17measure_sqrt_timeILy2EEvv+0xcc>
  cc:	ba 40 0d 03 00       	mov    $0x30d40,%edx
  d1:	e8 00 00 00 00       	callq  d6 <_Z17measure_sqrt_timeILy2EEvv+0xd6>
	: _M_a(__a), _M_b(__b)
  d6:	41 b8 11 00 00 00    	mov    $0x11,%r8d
  dc:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # fb <_Z17measure_sqrt_timeILy2EEvv+0xfb>
  e3:	48 89 c6             	mov    %rax,%rsi
  e6:	48 89 c1             	mov    %rax,%rcx
  e9:	e8 00 00 00 00       	callq  ee <_Z17measure_sqrt_timeILy2EEvv+0xee>
  ee:	48 8b 06             	mov    (%rsi),%rax
  f1:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  f5:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  fc:	00 
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
  fd:	48 85 db             	test   %rbx,%rbx
 100:	0f 84 6f 01 00 00    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
    { _M_init_pretr1(__token); }
 106:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      { _M_string_length = __length; }
 10a:	0f 84 8e 08 00 00    	je     99e <_Z17measure_sqrt_timeILy2EEvv+0x99e>
 110:	0f be 53 43          	movsbl 0x43(%rbx),%edx
	: allocator_type(__a), _M_p(__dat) { }
 114:	48 89 f1             	mov    %rsi,%rcx
 117:	4d 8d a5 00 35 0c 00 	lea    0xc3500(%r13),%r12
 11e:	49 8d 9d 00 6a 18 00 	lea    0x186a00(%r13),%rbx
 125:	e8 00 00 00 00       	callq  12a <_Z17measure_sqrt_timeILy2EEvv+0x12a>
      { __c1 = __c2; }
 12a:	4d 89 e6             	mov    %r12,%r14
 12d:	48 89 c1             	mov    %rax,%rcx
 130:	e8 00 00 00 00       	callq  135 <_Z17measure_sqrt_timeILy2EEvv+0x135>
  static std::random_device device;
 135:	e8 10 00 00 00       	callq  14a <_Z17measure_sqrt_timeILy2EEvv+0x14a>
	if (!_M_is_local())
 13a:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
 13e:	49 83 c6 04          	add    $0x4,%r14
 142:	c5 cb 5a f0          	vcvtsd2ss %xmm0,%xmm6,%xmm6
 146:	c4 c1 7a 11 76 fc    	vmovss %xmm6,-0x4(%r14)
 14c:	49 39 de             	cmp    %rbx,%r14
 14f:	75 e4                	jne    135 <_Z17measure_sqrt_timeILy2EEvv+0x135>
 151:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 158 <_Z17measure_sqrt_timeILy2EEvv+0x158>
 158:	41 b8 09 00 00 00    	mov    $0x9,%r8d
 15e:	48 8d 15 2a 00 00 00 	lea    0x2a(%rip),%rdx        # 18f <_Z17measure_sqrt_timeILy2EEvv+0x18f>
	  __ret = std::nextafter(_RealType(1), _RealType(0));
 165:	e8 00 00 00 00       	callq  16a <_Z17measure_sqrt_timeILy2EEvv+0x16a>
 16a:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 171 <_Z17measure_sqrt_timeILy2EEvv+0x171>
 171:	48 8b 07             	mov    (%rdi),%rax
 174:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 178:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
 17f:	00 
 180:	48 85 db             	test   %rbx,%rbx
 183:	0f 84 ec 00 00 00    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
 189:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 18d:	0f 84 6d 08 00 00    	je     a00 <_Z17measure_sqrt_timeILy2EEvv+0xa00>
 193:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 197:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19e <_Z17measure_sqrt_timeILy2EEvv+0x19e>
 19e:	e8 00 00 00 00       	callq  1a3 <_Z17measure_sqrt_timeILy2EEvv+0x1a3>
 1a3:	48 89 c1             	mov    %rax,%rcx
 1a6:	e8 00 00 00 00       	callq  1ab <_Z17measure_sqrt_timeILy2EEvv+0x1ab>
 1ab:	e8 00 00 00 00       	callq  1b0 <_Z17measure_sqrt_timeILy2EEvv+0x1b0>
 1b0:	c7 45 ac e8 03 00 00 	movl   $0x3e8,-0x54(%rbp)
 1b7:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
 1bb:	49 89 c7             	mov    %rax,%r15
 1be:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 1c2:	4c 89 ee             	mov    %r13,%rsi
 1c5:	4c 89 e3             	mov    %r12,%rbx
 1c8:	e9 88 00 00 00       	jmpq   255 <_Z17measure_sqrt_timeILy2EEvv+0x255>
 1cd:	0f 1f 00             	nopl   (%rax)
 1d0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1d4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1d8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
 1dd:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3

template <size_t LOOPS = 2>
void measure_sqrt_time(void) { // --> Segmentation error occurs here according to gdb https://stackoverflow.com/questions/3718998/fixing-segmentation-faults-in-c
 1e1:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 1e5:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 1e9:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
 1ed:	0f 87 a1 07 00 00    	ja     994 <_Z17measure_sqrt_timeILy2EEvv+0x994>
 1f3:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1f7:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
 1fb:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
 200:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
 204:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 208:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 20c:	c5 fa 11 6e 04       	vmovss %xmm5,0x4(%rsi)
 211:	0f 87 73 07 00 00    	ja     98a <_Z17measure_sqrt_timeILy2EEvv+0x98a>
 217:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 21b:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
      operator<<(long long __n)
      { return _M_insert(__n); }

      __ostream_type&
      operator<<(unsigned long long __n)
      { return _M_insert(__n); }
 21f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
 224:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
 228:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 22c:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 230:	c5 fa 11 5e 08       	vmovss %xmm3,0x8(%rsi)
    operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
    {
      if (!__s)
	__out.setstate(ios_base::badbit);
      else
	__ostream_insert(__out, __s,
 235:	0f 87 45 07 00 00    	ja     980 <_Z17measure_sqrt_timeILy2EEvv+0x980>
 23b:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
 23f:	48 83 c3 10          	add    $0x10,%rbx
 243:	48 83 c6 10          	add    $0x10,%rsi
      { return _M_insert(__n); }
 247:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
	__ostream_insert(__out, __s,
 24b:	c5 fa 11 6e fc       	vmovss %xmm5,-0x4(%rsi)
 250:	49 39 de             	cmp    %rbx,%r14
 253:	74 2b                	je     280 <_Z17measure_sqrt_timeILy2EEvv+0x280>
 255:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
       *  Additional l10n notes are at
       *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
      */
      char_type
      widen(char __c) const
      { return __check_facet(_M_ctype).widen(__c); }
 259:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
 25d:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 261:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
      if (!__f)
 265:	0f 86 65 ff ff ff    	jbe    1d0 <_Z17measure_sqrt_timeILy2EEvv+0x1d0>
 26b:	e8 00 00 00 00       	callq  270 <_Z17measure_sqrt_timeILy2EEvv+0x270>
       *  @return  The converted character.
      */
      char_type
      widen(char __c) const
      {
	if (_M_widen_ok)
 270:	e9 5b ff ff ff       	jmpq   1d0 <_Z17measure_sqrt_timeILy2EEvv+0x1d0>
 275:	e8 00 00 00 00       	callq  27a <_Z17measure_sqrt_timeILy2EEvv+0x27a>
 27a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   *  for more on this subject.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    endl(basic_ostream<_CharT, _Traits>& __os)
    { return flush(__os.put(__os.widen('\n'))); }
 280:	ff 4d ac             	decl   -0x54(%rbp)
 283:	0f 85 39 ff ff ff    	jne    1c2 <_Z17measure_sqrt_timeILy2EEvv+0x1c2>
   *  This manipulator simply calls the stream's @c flush() member function.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    flush(basic_ostream<_CharT, _Traits>& __os)
    { return __os.flush(); }
 289:	e8 00 00 00 00       	callq  28e <_Z17measure_sqrt_timeILy2EEvv+0x28e>
	__ostream_insert(__out, __s,
 28e:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 295:	9b c4 20 
 298:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 29c:	4c 29 f8             	sub    %r15,%rax
 29f:	48 89 c1             	mov    %rax,%rcx
 2a2:	48 f7 ea             	imul   %rdx
    MeasureTime<std::chrono::nanoseconds> time;
    alignas(128) float floats[N * 4];
    alignas(128) float roots[N * 4];

    std::cout << LOOPS  << " iterations" << std::endl;
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
 2a5:	48 c1 f9 3f          	sar    $0x3f,%rcx
 2a9:	48 c1 fa 07          	sar    $0x7,%rdx
 2ad:	48 29 ca             	sub    %rcx,%rdx
 2b0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2b7 <_Z17measure_sqrt_timeILy2EEvv+0x2b7>
 2b7:	e8 00 00 00 00       	callq  2bc <_Z17measure_sqrt_timeILy2EEvv+0x2bc>
 2bc:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 2c2:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 2fd <_Z17measure_sqrt_timeILy2EEvv+0x2fd>
 2c9:	48 89 c6             	mov    %rax,%rsi
 2cc:	48 89 c1             	mov    %rax,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
 2cf:	e8 00 00 00 00       	callq  2d4 <_Z17measure_sqrt_timeILy2EEvv+0x2d4>
      { return __check_facet(_M_ctype).widen(__c); }
 2d4:	48 8b 06             	mov    (%rsi),%rax
 2d7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 2db:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 2e2:	00 
      if (!__f)
 2e3:	48 85 db             	test   %rbx,%rbx
 2e6:	74 8d                	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
 2e8:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 2ec:	0f 84 65 08 00 00    	je     b57 <_Z17measure_sqrt_timeILy2EEvv+0xb57>
 2f2:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 2f6:	48 89 f1             	mov    %rsi,%rcx
 2f9:	e8 00 00 00 00       	callq  2fe <_Z17measure_sqrt_timeILy2EEvv+0x2fe>
 2fe:	48 89 c1             	mov    %rax,%rcx
 301:	e8 00 00 00 00       	callq  306 <_Z17measure_sqrt_timeILy2EEvv+0x306>
 306:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 30d <_Z17measure_sqrt_timeILy2EEvv+0x30d>
    { return __os.flush(); }
 30d:	41 b8 37 00 00 00    	mov    $0x37,%r8d
 313:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 35a <_Z17measure_sqrt_timeILy2EEvv+0x35a>
    for (int i = 0; i < 4 * N; i++) {
       floats[i] = random_double();
 31a:	e8 00 00 00 00       	callq  31f <_Z17measure_sqrt_timeILy2EEvv+0x31f>
 31f:	48 8b 07             	mov    (%rdi),%rax
 322:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 326:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
 32d:	00 
    for (int i = 0; i < 4 * N; i++) {
 32e:	48 85 db             	test   %rbx,%rbx
	__ostream_insert(__out, __s,
 331:	0f 84 3e ff ff ff    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
 337:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 33b:	0f 84 f0 06 00 00    	je     a31 <_Z17measure_sqrt_timeILy2EEvv+0xa31>
 341:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 345:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 34c <_Z17measure_sqrt_timeILy2EEvv+0x34c>
    { return flush(__os.put(__os.widen('\n'))); }
 34c:	e8 00 00 00 00       	callq  351 <_Z17measure_sqrt_timeILy2EEvv+0x351>
 351:	48 89 c1             	mov    %rax,%rcx
      { return __check_facet(_M_ctype).widen(__c); }
 354:	e8 00 00 00 00       	callq  359 <_Z17measure_sqrt_timeILy2EEvv+0x359>
 359:	e8 00 00 00 00       	callq  35e <_Z17measure_sqrt_timeILy2EEvv+0x35e>
 35e:	ba e8 03 00 00       	mov    $0x3e8,%edx
      if (!__f)
 363:	c5 f8 28 3d 50 01 00 	vmovaps 0x150(%rip),%xmm7        # 4bb <_Z17measure_sqrt_timeILy2EEvv+0x4bb>
 36a:	00 
 36b:	c5 f8 28 35 60 01 00 	vmovaps 0x160(%rip),%xmm6        # 4d3 <_Z17measure_sqrt_timeILy2EEvv+0x4d3>
 372:	00 
 373:	48 89 c3             	mov    %rax,%rbx
 376:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 37a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 380:	31 c0                	xor    %eax,%eax
 382:	c4 c1 78 28 04 04    	vmovaps (%r12,%rax,1),%xmm0
    { return __os.flush(); }
 388:	48 83 c0 10          	add    $0x10,%rax
   DURATION time = DURATION(0);
   bool stopped = true;
public:
   void start_clock() {
     if (stopped) {
       start = steady_clock::now();
 38c:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
 391:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
 395:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 399:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 39d:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 3a1:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
 3a5:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
 3a9:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 3ad:	c4 a1 78 29 44 28 f0 	vmovaps %xmm0,-0x10(%rax,%r13,1)
    std::cout << "math sqrt" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i += 4) {
        for (int k = 0; k < 4; k++) {
          roots[i + k] = sqrt(floats[i + k]);
 3b4:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
 3ba:	75 c6                	jne    382 <_Z17measure_sqrt_timeILy2EEvv+0x382>
 3bc:	ff ca                	dec    %edx
 3be:	75 c0                	jne    380 <_Z17measure_sqrt_timeILy2EEvv+0x380>
 3c0:	e8 00 00 00 00       	callq  3c5 <_Z17measure_sqrt_timeILy2EEvv+0x3c5>
 3c5:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 3cc:	9b c4 20 
 3cf:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 3d3:	48 29 d8             	sub    %rbx,%rax
 3d6:	48 89 c1             	mov    %rax,%rcx
 3d9:	48 f7 ea             	imul   %rdx
 3dc:	48 c1 f9 3f          	sar    $0x3f,%rcx
 3e0:	48 c1 fa 07          	sar    $0x7,%rdx
 3e4:	48 29 ca             	sub    %rcx,%rdx
 3e7:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 3ee <_Z17measure_sqrt_timeILy2EEvv+0x3ee>
 3ee:	e8 00 00 00 00       	callq  3f3 <_Z17measure_sqrt_timeILy2EEvv+0x3f3>
 3f3:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 3f9:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 434 <_Z17measure_sqrt_timeILy2EEvv+0x434>
 400:	48 89 c6             	mov    %rax,%rsi
 403:	48 89 c1             	mov    %rax,%rcx
 406:	e8 00 00 00 00       	callq  40b <_Z17measure_sqrt_timeILy2EEvv+0x40b>
 40b:	48 8b 06             	mov    (%rsi),%rax
 40e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 412:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 419:	00 
 41a:	48 85 db             	test   %rbx,%rbx
 41d:	0f 84 52 fe ff ff    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
 423:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 427:	0f 84 c8 06 00 00    	je     af5 <_Z17measure_sqrt_timeILy2EEvv+0xaf5>
 42d:	0f be 53 43          	movsbl 0x43(%rbx),%edx
      for (int i = 0; i < 4 * N; i += 4) {
 431:	48 89 f1             	mov    %rsi,%rcx
 434:	e8 00 00 00 00       	callq  439 <_Z17measure_sqrt_timeILy2EEvv+0x439>
          roots[i + k] = sqrt(floats[i + k]);
 439:	48 89 c1             	mov    %rax,%rcx
 43c:	e8 00 00 00 00       	callq  441 <_Z17measure_sqrt_timeILy2EEvv+0x441>
 441:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 448 <_Z17measure_sqrt_timeILy2EEvv+0x448>
 448:	41 b8 39 00 00 00    	mov    $0x39,%r8d
 44e:	48 8d 15 78 00 00 00 	lea    0x78(%rip),%rdx        # 4cd <_Z17measure_sqrt_timeILy2EEvv+0x4cd>
	__throw_bad_cast();
 455:	e8 00 00 00 00       	callq  45a <_Z17measure_sqrt_timeILy2EEvv+0x45a>
 45a:	48 8b 07             	mov    (%rdi),%rax
 45d:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    for (int j = 0; j < LOOP; j++) {
 461:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
 468:	00 
     }
   }

   void stop_clock() {
     if (! stopped) {
       end = steady_clock::now();
 469:	48 85 db             	test   %rbx,%rbx
 46c:	0f 84 03 fe ff ff    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
        }
      }    
    }
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 472:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 476:	0f 84 e6 05 00 00    	je     a62 <_Z17measure_sqrt_timeILy2EEvv+0xa62>
		const duration<_Rep2, _Period2>& __rhs)
      {
	typedef duration<_Rep1, _Period1>			__dur1;
	typedef duration<_Rep2, _Period2>			__dur2;
	typedef typename common_type<__dur1,__dur2>::type	__cd;
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
 47c:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 480:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 487 <_Z17measure_sqrt_timeILy2EEvv+0x487>
 487:	e8 00 00 00 00       	callq  48c <_Z17measure_sqrt_timeILy2EEvv+0x48c>
 48c:	48 89 c1             	mov    %rax,%rcx
 48f:	e8 00 00 00 00       	callq  494 <_Z17measure_sqrt_timeILy2EEvv+0x494>
      { return _M_insert(__n); }
 494:	e8 00 00 00 00       	callq  499 <_Z17measure_sqrt_timeILy2EEvv+0x499>
 499:	ba e8 03 00 00       	mov    $0x3e8,%edx
	__ostream_insert(__out, __s,
 49e:	48 89 c6             	mov    %rax,%rsi
 4a1:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 4a5:	4c 89 e0             	mov    %r12,%rax
 4a8:	4c 89 eb             	mov    %r13,%rbx
      { return _M_insert(__n); }
 4ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	__ostream_insert(__out, __s,
 4b0:	c5 f8 28 20          	vmovaps (%rax),%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
 4b4:	c5 f8 28 40 20       	vmovaps 0x20(%rax),%xmm0
      { return __check_facet(_M_ctype).widen(__c); }
 4b9:	48 83 c3 40          	add    $0x40,%rbx
 4bd:	48 83 c0 40          	add    $0x40,%rax
 4c1:	c5 d8 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm2
      if (!__f)
 4c7:	c5 f8 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm1
 4cd:	c5 d8 c6 60 d0 dd    	vshufps $0xdd,-0x30(%rax),%xmm4,%xmm4
 4d3:	c5 f8 c6 40 f0 dd    	vshufps $0xdd,-0x10(%rax),%xmm0,%xmm0
 4d9:	c5 e8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm2,%xmm3
    { return __os.flush(); }
 4de:	c5 e8 c6 c9 dd       	vshufps $0xdd,%xmm1,%xmm2,%xmm1
 4e3:	c5 d8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm2
	__ostream_insert(__out, __s,
 4e8:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
 4ed:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
 4f2:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 4f6:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 4fa:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 4fe:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 502:	c5 e0 5e dc          	vdivps %xmm4,%xmm3,%xmm3
 506:	c5 e0 58 dc          	vaddps %xmm4,%xmm3,%xmm3
 50a:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
      if (!__f)
 50f:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 513:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 517:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
 51b:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 51f:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 523:	c5 e8 5e d4          	vdivps %xmm4,%xmm2,%xmm2
    { return flush(__os.put(__os.widen('\n'))); }
 527:	c5 e8 58 d4          	vaddps %xmm4,%xmm2,%xmm2
 52b:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
 530:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
    { return __os.flush(); }
 534:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 538:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
       start = steady_clock::now();
 53c:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 540:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 544:	c5 f0 5e cc          	vdivps %xmm4,%xmm1,%xmm1
 548:	c5 f0 58 cc          	vaddps %xmm4,%xmm1,%xmm1
 54c:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
 551:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 555:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 559:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 55d:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 561:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
float sqrt1(float * a) {
  
  float root;
  int * ai = reinterpret_cast<int *>(a);
  int * initial = reinterpret_cast<int *>(&root);
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 565:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
 569:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
 56d:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
 571:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
  for(size_t i = 0; i < LOOPS; i++) {
    root = 0.5 * (root + (* a / root));
 575:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 579:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
 57d:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
 581:	c5 d8 14 d3          	vunpcklps %xmm3,%xmm4,%xmm2
 585:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
 589:	c5 f8 29 53 c0       	vmovaps %xmm2,-0x40(%rbx)

    std::cout << "sqrt1 (Newton method for single float, one time a loop)" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i++) {
        roots[i] = sqrt1<LOOPS>(floats + i);
 58e:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
 592:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
 596:	c5 f8 29 63 d0       	vmovaps %xmm4,-0x30(%rbx)
 59b:	c5 f8 29 53 e0       	vmovaps %xmm2,-0x20(%rbx)
       end = steady_clock::now();
 5a0:	c5 f8 29 4b f0       	vmovaps %xmm1,-0x10(%rbx)
      }
    }    
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 5a5:	4c 39 e3             	cmp    %r12,%rbx
 5a8:	0f 85 02 ff ff ff    	jne    4b0 <_Z17measure_sqrt_timeILy2EEvv+0x4b0>
 5ae:	ff ca                	dec    %edx
 5b0:	0f 85 ef fe ff ff    	jne    4a5 <_Z17measure_sqrt_timeILy2EEvv+0x4a5>
 5b6:	e8 00 00 00 00       	callq  5bb <_Z17measure_sqrt_timeILy2EEvv+0x5bb>
 5bb:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 5c2:	9b c4 20 
 5c5:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
      { return _M_insert(__n); }
 5c9:	48 29 f0             	sub    %rsi,%rax
 5cc:	48 89 c1             	mov    %rax,%rcx
 5cf:	48 f7 ea             	imul   %rdx
 5d2:	48 c1 f9 3f          	sar    $0x3f,%rcx
	__ostream_insert(__out, __s,
 5d6:	48 c1 fa 07          	sar    $0x7,%rdx
 5da:	48 29 ca             	sub    %rcx,%rdx
 5dd:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 5e4 <_Z17measure_sqrt_timeILy2EEvv+0x5e4>
 5e4:	e8 00 00 00 00       	callq  5e9 <_Z17measure_sqrt_timeILy2EEvv+0x5e9>
 5e9:	41 b8 05 00 00 00    	mov    $0x5,%r8d
      { return __check_facet(_M_ctype).widen(__c); }
 5ef:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 62a <_Z17measure_sqrt_timeILy2EEvv+0x62a>
 5f6:	49 89 c6             	mov    %rax,%r14
 5f9:	48 89 c1             	mov    %rax,%rcx
      if (!__f)
 5fc:	e8 00 00 00 00       	callq  601 <_Z17measure_sqrt_timeILy2EEvv+0x601>
 601:	49 8b 06             	mov    (%r14),%rax
 604:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 608:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
 60f:	00 
 610:	48 85 f6             	test   %rsi,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
 613:	0f 84 5c fc ff ff    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
    { return __os.flush(); }
 619:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 61d:	0f 84 03 05 00 00    	je     b26 <_Z17measure_sqrt_timeILy2EEvv+0xb26>
	__ostream_insert(__out, __s,
 623:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 627:	4c 89 f1             	mov    %r14,%rcx
 62a:	e8 00 00 00 00       	callq  62f <_Z17measure_sqrt_timeILy2EEvv+0x62f>
 62f:	48 89 c1             	mov    %rax,%rcx
 632:	e8 00 00 00 00       	callq  637 <_Z17measure_sqrt_timeILy2EEvv+0x637>
 637:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 63e <_Z17measure_sqrt_timeILy2EEvv+0x63e>
      { return __check_facet(_M_ctype).widen(__c); }
 63e:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
 644:	48 8d 15 b8 00 00 00 	lea    0xb8(%rip),%rdx        # 703 <_Z17measure_sqrt_timeILy2EEvv+0x703>
      if (!__f)
 64b:	e8 00 00 00 00       	callq  650 <_Z17measure_sqrt_timeILy2EEvv+0x650>
 650:	48 8b 07             	mov    (%rdi),%rax
 653:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 657:	48 8b b4 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rsi
 65e:	00 
 65f:	48 85 f6             	test   %rsi,%rsi
    { return flush(__os.put(__os.widen('\n'))); }
 662:	0f 84 0d fc ff ff    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
 668:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
    { return __os.flush(); }
 66c:	0f 84 21 04 00 00    	je     a93 <_Z17measure_sqrt_timeILy2EEvv+0xa93>
 672:	0f be 56 43          	movsbl 0x43(%rsi),%edx
       start = steady_clock::now();
 676:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 67d <_Z17measure_sqrt_timeILy2EEvv+0x67d>
 67d:	e8 00 00 00 00       	callq  682 <_Z17measure_sqrt_timeILy2EEvv+0x682>
 682:	48 89 c1             	mov    %rax,%rcx
 685:	e8 00 00 00 00       	callq  68a <_Z17measure_sqrt_timeILy2EEvv+0x68a>
 68a:	e8 00 00 00 00       	callq  68f <_Z17measure_sqrt_timeILy2EEvv+0x68f>
 68f:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 694:	48 89 c6             	mov    %rax,%rsi
 697:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 69b:	4c 89 e2             	mov    %r12,%rdx
 69e:	4c 89 e8             	mov    %r13,%rax
 6a1:	c5 f8 28 12          	vmovaps (%rdx),%xmm2
 6a5:	c5 f8 28 42 20       	vmovaps 0x20(%rdx),%xmm0
 6aa:	48 83 c0 40          	add    $0x40,%rax
 6ae:	48 83 c2 40          	add    $0x40,%rdx
 6b2:	c5 f8 c6 4a f0 88    	vshufps $0x88,-0x10(%rdx),%xmm0,%xmm1
 6b8:	c5 e8 c6 62 d0 88    	vshufps $0x88,-0x30(%rdx),%xmm2,%xmm4
 6be:	c5 f8 c6 42 f0 dd    	vshufps $0xdd,-0x10(%rdx),%xmm0,%xmm0
 6c4:	c5 e8 c6 52 d0 dd    	vshufps $0xdd,-0x30(%rdx),%xmm2,%xmm2
 6ca:	c5 d8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm4,%xmm3
 6cf:	c5 d8 c6 e1 dd       	vshufps $0xdd,%xmm1,%xmm4,%xmm4
 6d4:	c5 e8 c6 c8 88       	vshufps $0x88,%xmm0,%xmm2,%xmm1
    root = 0.5 * (root + (* a / root));
 6d9:	c5 e8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm2,%xmm0
 6de:	c5 e9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm2
 6e3:	c5 e9 fe d7          	vpaddd %xmm7,%xmm2,%xmm2
 6e7:	c5 e0 5e ea          	vdivps %xmm2,%xmm3,%xmm5
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 6eb:	c5 d0 58 d2          	vaddps %xmm2,%xmm5,%xmm2
 6ef:	c5 d1 72 e1 01       	vpsrad $0x1,%xmm1,%xmm5
    root = 0.5 * (root + (* a / root));
 6f4:	c5 d1 fe ef          	vpaddd %xmm7,%xmm5,%xmm5
 6f8:	c5 70 5e cd          	vdivps %xmm5,%xmm1,%xmm9
 6fc:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 700:	c5 30 58 cd          	vaddps %xmm5,%xmm9,%xmm9
 704:	c5 d1 72 e4 01       	vpsrad $0x1,%xmm4,%xmm5
 709:	c5 d1 fe ef          	vpaddd %xmm7,%xmm5,%xmm5
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 70d:	c5 e0 5e da          	vdivps %xmm2,%xmm3,%xmm3
 711:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
    root = 0.5 * (root + (* a / root));
 715:	c5 58 5e c5          	vdivps %xmm5,%xmm4,%xmm8
 719:	c5 e0 58 da          	vaddps %xmm2,%xmm3,%xmm3
 71d:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
 721:	c5 38 58 c5          	vaddps %xmm5,%xmm8,%xmm8
 725:	c5 d1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm5
 72a:	c5 d1 fe ef          	vpaddd %xmm7,%xmm5,%xmm5
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 72e:	c4 c1 70 5e d1       	vdivps %xmm9,%xmm1,%xmm2
 733:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
    root = 0.5 * (root + (* a / root));
 737:	c5 78 5e d5          	vdivps %xmm5,%xmm0,%xmm10
 73b:	c4 c1 68 58 d1       	vaddps %xmm9,%xmm2,%xmm2
 740:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 744:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
 748:	c4 c1 58 5e c8       	vdivps %xmm8,%xmm4,%xmm1
    std::cout << "sqrt1 (Newton method for single float, four times a loop)" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i += 4) {
        for (int k = 0; k < 4; k++) {
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
 74d:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
 751:	c5 f8 5e c5          	vdivps %xmm5,%xmm0,%xmm0
 755:	c4 c1 70 58 c8       	vaddps %xmm8,%xmm1,%xmm1
 75a:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 75e:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
 762:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
 766:	c5 f8 58 c5          	vaddps %xmm5,%xmm0,%xmm0
 76a:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 76e:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
 772:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
 776:	c5 d8 14 d3          	vunpcklps %xmm3,%xmm4,%xmm2
 77a:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
 77e:	c5 f8 29 50 c0       	vmovaps %xmm2,-0x40(%rax)
 783:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
 787:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
 78b:	c5 f8 29 60 d0       	vmovaps %xmm4,-0x30(%rax)
    for (int j = 0; j < LOOP; j++) {
 790:	c5 f8 29 50 e0       	vmovaps %xmm2,-0x20(%rax)
 795:	c5 f8 29 48 f0       	vmovaps %xmm1,-0x10(%rax)
       end = steady_clock::now();
 79a:	48 39 c3             	cmp    %rax,%rbx
        }
      }
    }    
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 79d:	0f 85 fe fe ff ff    	jne    6a1 <_Z17measure_sqrt_timeILy2EEvv+0x6a1>
 7a3:	ff c9                	dec    %ecx
 7a5:	0f 85 f0 fe ff ff    	jne    69b <_Z17measure_sqrt_timeILy2EEvv+0x69b>
 7ab:	e8 00 00 00 00       	callq  7b0 <_Z17measure_sqrt_timeILy2EEvv+0x7b0>
 7b0:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 7b7:	9b c4 20 
 7ba:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
      { return _M_insert(__n); }
 7be:	48 29 f0             	sub    %rsi,%rax
 7c1:	48 89 c1             	mov    %rax,%rcx
 7c4:	48 f7 ea             	imul   %rdx
 7c7:	48 c1 f9 3f          	sar    $0x3f,%rcx
	__ostream_insert(__out, __s,
 7cb:	48 c1 fa 07          	sar    $0x7,%rdx
 7cf:	48 29 ca             	sub    %rcx,%rdx
 7d2:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 7d9 <_Z17measure_sqrt_timeILy2EEvv+0x7d9>
 7d9:	e8 00 00 00 00       	callq  7de <_Z17measure_sqrt_timeILy2EEvv+0x7de>
 7de:	41 b8 05 00 00 00    	mov    $0x5,%r8d
      { return __check_facet(_M_ctype).widen(__c); }
 7e4:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 81f <_Z17measure_sqrt_timeILy2EEvv+0x81f>
 7eb:	48 89 c6             	mov    %rax,%rsi
 7ee:	48 89 c1             	mov    %rax,%rcx
      if (!__f)
 7f1:	e8 00 00 00 00       	callq  7f6 <_Z17measure_sqrt_timeILy2EEvv+0x7f6>
 7f6:	48 8b 06             	mov    (%rsi),%rax
 7f9:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 7fd:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 804:	00 
 805:	48 85 db             	test   %rbx,%rbx
    { return flush(__os.put(__os.widen('\n'))); }
 808:	0f 84 67 fa ff ff    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
 80e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    { return __os.flush(); }
 812:	0f 84 ac 02 00 00    	je     ac4 <_Z17measure_sqrt_timeILy2EEvv+0xac4>
	__ostream_insert(__out, __s,
 818:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 81c:	48 89 f1             	mov    %rsi,%rcx
 81f:	e8 00 00 00 00       	callq  824 <_Z17measure_sqrt_timeILy2EEvv+0x824>
 824:	48 89 c1             	mov    %rax,%rcx
 827:	e8 00 00 00 00       	callq  82c <_Z17measure_sqrt_timeILy2EEvv+0x82c>
 82c:	e8 00 00 00 00       	callq  831 <_Z17measure_sqrt_timeILy2EEvv+0x831>
    { return flush(__os.put(__os.widen('\n'))); }
 831:	ba e8 03 00 00       	mov    $0x3e8,%edx
      { return __check_facet(_M_ctype).widen(__c); }
 836:	48 89 c6             	mov    %rax,%rsi
 839:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 83d:	31 c0                	xor    %eax,%eax
      if (!__f)
 83f:	90                   	nop
 840:	c4 c1 78 28 04 04    	vmovaps (%r12,%rax,1),%xmm0
 846:	48 83 c0 10          	add    $0x10,%rax
 84a:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
 84f:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
 853:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 857:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 85b:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 85f:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
    { return __os.flush(); }
 863:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
 867:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
       start = steady_clock::now();
 86b:	c4 a1 78 29 44 28 f0 	vmovaps %xmm0,-0x10(%rax,%r13,1)
 872:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
 878:	75 c6                	jne    840 <_Z17measure_sqrt_timeILy2EEvv+0x840>
 87a:	ff ca                	dec    %edx
 87c:	75 bf                	jne    83d <_Z17measure_sqrt_timeILy2EEvv+0x83d>
 87e:	e8 00 00 00 00       	callq  883 <_Z17measure_sqrt_timeILy2EEvv+0x883>
void sqrt2(float * __restrict__ a, float * __restrict__ root) {
    // a zu int casten
    int * ai = reinterpret_cast<int *>(a) ;
    // initial berechnen
    int * initial = reinterpret_cast<int *>( root ) ;
    initial[0] = (1 << 29) + (ai[0] >> 1) - (1 << 22) - 0x4C000;
 883:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 88a <_Z17measure_sqrt_timeILy2EEvv+0x88a>
 88a:	41 b8 34 00 00 00    	mov    $0x34,%r8d
 890:	48 8d 15 e8 00 00 00 	lea    0xe8(%rip),%rdx        # 97f <_Z17measure_sqrt_timeILy2EEvv+0x97f>
 897:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 89b:	48 29 f0             	sub    %rsi,%rax
 89e:	48 89 c3             	mov    %rax,%rbx
 8a1:	e8 00 00 00 00       	callq  8a6 <_Z17measure_sqrt_timeILy2EEvv+0x8a6>
 8a6:	48 8b 07             	mov    (%rdi),%rax
 8a9:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 8ad:	48 8b b4 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rsi
 8b4:	00 
 8b5:	48 85 f6             	test   %rsi,%rsi
 8b8:	0f 84 b7 f9 ff ff    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
 8be:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 8c2:	0f 84 f1 02 00 00    	je     bb9 <_Z17measure_sqrt_timeILy2EEvv+0xbb9>
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
    // Newton Verfahren durchfuehren
    for (unsigned int j = 0; j < LOOPS; j++) {
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8c8:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 8cc:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 8d3 <_Z17measure_sqrt_timeILy2EEvv+0x8d3>
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
 8d3:	e8 00 00 00 00       	callq  8d8 <_Z17measure_sqrt_timeILy2EEvv+0x8d8>
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8d8:	48 89 c1             	mov    %rax,%rcx
 8db:	e8 00 00 00 00       	callq  8e0 <_Z17measure_sqrt_timeILy2EEvv+0x8e0>
 8e0:	48 89 d8             	mov    %rbx,%rax
 8e3:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 8ea:	9b c4 20 
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8ed:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 8f4 <_Z17measure_sqrt_timeILy2EEvv+0x8f4>
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8f4:	48 c1 fb 3f          	sar    $0x3f,%rbx
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 8f8:	48 f7 ea             	imul   %rdx
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8fb:	48 c1 fa 07          	sar    $0x7,%rdx
 8ff:	48 29 da             	sub    %rbx,%rdx
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 902:	e8 00 00 00 00       	callq  907 <_Z17measure_sqrt_timeILy2EEvv+0x907>
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
 907:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 90d:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 948 <_Z17measure_sqrt_timeILy2EEvv+0x948>
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 914:	48 89 c6             	mov    %rax,%rsi
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 917:	48 89 c1             	mov    %rax,%rcx
 91a:	e8 00 00 00 00       	callq  91f <_Z17measure_sqrt_timeILy2EEvv+0x91f>
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 91f:	48 8b 06             	mov    (%rsi),%rax
 922:	48 8b 40 e8          	mov    -0x18(%rax),%rax
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 926:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 92d:	00 
 92e:	48 85 db             	test   %rbx,%rbx
 931:	0f 84 3e f9 ff ff    	je     275 <_Z17measure_sqrt_timeILy2EEvv+0x275>
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 937:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 93b:	0f 84 47 02 00 00    	je     b88 <_Z17measure_sqrt_timeILy2EEvv+0xb88>
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 941:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 945:	48 89 f1             	mov    %rsi,%rcx
 948:	e8 00 00 00 00       	callq  94d <_Z17measure_sqrt_timeILy2EEvv+0x94d>
 94d:	90                   	nop
 94e:	c5 f8 28 75 d0       	vmovaps -0x30(%rbp),%xmm6
 953:	c5 f8 28 7d e0       	vmovaps -0x20(%rbp),%xmm7
 958:	c5 78 28 45 f0       	vmovaps -0x10(%rbp),%xmm8
 95d:	48 89 c1             	mov    %rax,%rcx
 960:	c5 78 28 4d 00       	vmovaps 0x0(%rbp),%xmm9
 965:	c5 78 28 55 10       	vmovaps 0x10(%rbp),%xmm10
 96a:	48 8d 65 28          	lea    0x28(%rbp),%rsp
 96e:	5b                   	pop    %rbx
 96f:	5e                   	pop    %rsi
 970:	5f                   	pop    %rdi
 971:	41 5c                	pop    %r12
 973:	41 5d                	pop    %r13
 975:	41 5e                	pop    %r14
 977:	41 5f                	pop    %r15
 979:	5d                   	pop    %rbp
 97a:	e9 00 00 00 00       	jmpq   97f <_Z17measure_sqrt_timeILy2EEvv+0x97f>
 97f:	90                   	nop
 980:	e8 00 00 00 00       	callq  985 <_Z17measure_sqrt_timeILy2EEvv+0x985>
    time.reset_clock();

    std::cout << "sqrt2 (Newton method for sequence of 4 floats)" << std::endl;
    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
 985:	e9 b1 f8 ff ff       	jmpq   23b <_Z17measure_sqrt_timeILy2EEvv+0x23b>
 98a:	e8 00 00 00 00       	callq  98f <_Z17measure_sqrt_timeILy2EEvv+0x98f>
       end = steady_clock::now();
 98f:	e9 83 f8 ff ff       	jmpq   217 <_Z17measure_sqrt_timeILy2EEvv+0x217>
      for (int i = 0; i < 4 * N; i += 4) {
        sqrt2<LOOPS>(floats + i, roots + i);
      }
    }    
    time.stop_clock();
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 994:	e8 00 00 00 00       	callq  999 <_Z17measure_sqrt_timeILy2EEvv+0x999>
 999:	e9 55 f8 ff ff       	jmpq   1f3 <_Z17measure_sqrt_timeILy2EEvv+0x1f3>
 99e:	48 89 d9             	mov    %rbx,%rcx
 9a1:	e8 00 00 00 00       	callq  9a6 <_Z17measure_sqrt_timeILy2EEvv+0x9a6>
 9a6:	48 8b 03             	mov    (%rbx),%rax
 9a9:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 9b0 <_Z17measure_sqrt_timeILy2EEvv+0x9b0>
 9b0:	ba 0a 00 00 00       	mov    $0xa,%edx
      { return _M_insert(__n); }
 9b5:	48 8b 40 30          	mov    0x30(%rax),%rax
 9b9:	48 39 c8             	cmp    %rcx,%rax
 9bc:	0f 84 52 f7 ff ff    	je     114 <_Z17measure_sqrt_timeILy2EEvv+0x114>
	__ostream_insert(__out, __s,
 9c2:	48 89 d9             	mov    %rbx,%rcx
 9c5:	ff d0                	callq  *%rax
 9c7:	0f be d0             	movsbl %al,%edx
 9ca:	e9 45 f7 ff ff       	jmpq   114 <_Z17measure_sqrt_timeILy2EEvv+0x114>
 9cf:	48 89 d9             	mov    %rbx,%rcx
 9d2:	e8 00 00 00 00       	callq  9d7 <_Z17measure_sqrt_timeILy2EEvv+0x9d7>
    { return flush(__os.put(__os.widen('\n'))); }
 9d7:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
 9da:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 9e1 <_Z17measure_sqrt_timeILy2EEvv+0x9e1>
 9e1:	ba 0a 00 00 00       	mov    $0xa,%edx
      if (!__f)
 9e6:	48 8b 40 30          	mov    0x30(%rax),%rax
 9ea:	48 39 c8             	cmp    %rcx,%rax
 9ed:	0f 84 a9 f6 ff ff    	je     9c <_Z17measure_sqrt_timeILy2EEvv+0x9c>
 9f3:	48 89 d9             	mov    %rbx,%rcx
 9f6:	ff d0                	callq  *%rax
 9f8:	0f be d0             	movsbl %al,%edx
 9fb:	e9 9c f6 ff ff       	jmpq   9c <_Z17measure_sqrt_timeILy2EEvv+0x9c>
 a00:	48 89 d9             	mov    %rbx,%rcx
 a03:	e8 00 00 00 00       	callq  a08 <_Z17measure_sqrt_timeILy2EEvv+0xa08>
    { return __os.flush(); }
 a08:	48 8b 03             	mov    (%rbx),%rax
 a0b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # a12 <_Z17measure_sqrt_timeILy2EEvv+0xa12>
       start = steady_clock::now();
 a12:	ba 0a 00 00 00       	mov    $0xa,%edx
 a17:	48 8b 40 30          	mov    0x30(%rax),%rax
 a1b:	48 39 c8             	cmp    %rcx,%rax
 a1e:	0f 84 73 f7 ff ff    	je     197 <_Z17measure_sqrt_timeILy2EEvv+0x197>
template <size_t LOOPS = 2>
void v4sf_sqrt(v4sf * __restrict__ a, v4sf * __restrict__ root) {

  v4si * ai = reinterpret_cast<v4si *>(a);
  v4si * initial = reinterpret_cast<v4si *>(root);
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 a24:	48 89 d9             	mov    %rbx,%rcx
 a27:	ff d0                	callq  *%rax
 a29:	0f be d0             	movsbl %al,%edx
 a2c:	e9 66 f7 ff ff       	jmpq   197 <_Z17measure_sqrt_timeILy2EEvv+0x197>
 a31:	48 89 d9             	mov    %rbx,%rcx
  for (size_t i = 0; i < LOOPS; i++) {
    * root = 0.5 * (* root + (* a / * root));
 a34:	e8 00 00 00 00       	callq  a39 <_Z17measure_sqrt_timeILy2EEvv+0xa39>
 a39:	48 8b 03             	mov    (%rbx),%rax
 a3c:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # a43 <_Z17measure_sqrt_timeILy2EEvv+0xa43>
 a43:	ba 0a 00 00 00       	mov    $0xa,%edx
 a48:	48 8b 40 30          	mov    0x30(%rax),%rax
 a4c:	48 39 c8             	cmp    %rcx,%rax
 a4f:	0f 84 f0 f8 ff ff    	je     345 <_Z17measure_sqrt_timeILy2EEvv+0x345>
    time.reset_clock();

    time.start_clock();
    for (int j = 0; j < LOOP; j++) {
      for (int i = 0; i < 4 * N; i += 4) {
 a55:	48 89 d9             	mov    %rbx,%rcx
 a58:	ff d0                	callq  *%rax
    for (int j = 0; j < LOOP; j++) {
 a5a:	0f be d0             	movsbl %al,%edx
 a5d:	e9 e3 f8 ff ff       	jmpq   345 <_Z17measure_sqrt_timeILy2EEvv+0x345>
       end = steady_clock::now();
 a62:	48 89 d9             	mov    %rbx,%rcx
	__ostream_insert(__out, __s,
 a65:	e8 00 00 00 00       	callq  a6a <_Z17measure_sqrt_timeILy2EEvv+0xa6a>
 a6a:	48 8b 03             	mov    (%rbx),%rax
 a6d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # a74 <_Z17measure_sqrt_timeILy2EEvv+0xa74>
 a74:	ba 0a 00 00 00       	mov    $0xa,%edx
 a79:	48 8b 40 30          	mov    0x30(%rax),%rax
 a7d:	48 39 c8             	cmp    %rcx,%rax
 a80:	0f 84 fa f9 ff ff    	je     480 <_Z17measure_sqrt_timeILy2EEvv+0x480>
    { return flush(__os.put(__os.widen('\n'))); }
 a86:	48 89 d9             	mov    %rbx,%rcx
      { return __check_facet(_M_ctype).widen(__c); }
 a89:	ff d0                	callq  *%rax
 a8b:	0f be d0             	movsbl %al,%edx
 a8e:	e9 ed f9 ff ff       	jmpq   480 <_Z17measure_sqrt_timeILy2EEvv+0x480>
 a93:	48 89 f1             	mov    %rsi,%rcx
      if (!__f)
 a96:	e8 00 00 00 00       	callq  a9b <_Z17measure_sqrt_timeILy2EEvv+0xa9b>
 a9b:	48 8b 06             	mov    (%rsi),%rax
 a9e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # aa5 <_Z17measure_sqrt_timeILy2EEvv+0xaa5>
 aa5:	ba 0a 00 00 00       	mov    $0xa,%edx
 aaa:	48 8b 40 30          	mov    0x30(%rax),%rax
 aae:	48 39 c8             	cmp    %rcx,%rax
 ab1:	0f 84 bf fb ff ff    	je     676 <_Z17measure_sqrt_timeILy2EEvv+0x676>
 ab7:	48 89 f1             	mov    %rsi,%rcx
    { return __os.flush(); }
 aba:	ff d0                	callq  *%rax
 abc:	0f be d0             	movsbl %al,%edx
 abf:	e9 b2 fb ff ff       	jmpq   676 <_Z17measure_sqrt_timeILy2EEvv+0x676>
      }
    }    
    time.stop_clock();

    std::cout << "sqrt3 (Newton method for sequence of 4 floats, SIMD)" << std::endl;
    std::cout << time.time_clock().count() / LOOP  << " [ns]" << std::endl;
 ac4:	48 89 d9             	mov    %rbx,%rcx
 ac7:	e8 00 00 00 00       	callq  acc <_Z17measure_sqrt_timeILy2EEvv+0xacc>
 acc:	48 8b 03             	mov    (%rbx),%rax
      { return _M_insert(__n); }
 acf:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ad6 <_Z17measure_sqrt_timeILy2EEvv+0xad6>
 ad6:	ba 0a 00 00 00       	mov    $0xa,%edx
 adb:	48 8b 40 30          	mov    0x30(%rax),%rax
 adf:	48 39 c8             	cmp    %rcx,%rax
 ae2:	0f 84 34 fd ff ff    	je     81c <_Z17measure_sqrt_timeILy2EEvv+0x81c>
	__ostream_insert(__out, __s,
 ae8:	48 89 d9             	mov    %rbx,%rcx
 aeb:	ff d0                	callq  *%rax
 aed:	0f be d0             	movsbl %al,%edx
 af0:	e9 27 fd ff ff       	jmpq   81c <_Z17measure_sqrt_timeILy2EEvv+0x81c>
      { return _M_insert(__n); }
 af5:	48 89 d9             	mov    %rbx,%rcx
	__ostream_insert(__out, __s,
 af8:	e8 00 00 00 00       	callq  afd <_Z17measure_sqrt_timeILy2EEvv+0xafd>
 afd:	48 8b 03             	mov    (%rbx),%rax
    { return flush(__os.put(__os.widen('\n'))); }
 b00:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b07 <_Z17measure_sqrt_timeILy2EEvv+0xb07>
      { return __check_facet(_M_ctype).widen(__c); }
 b07:	ba 0a 00 00 00       	mov    $0xa,%edx
 b0c:	48 8b 40 30          	mov    0x30(%rax),%rax
      if (!__f)
 b10:	48 39 c8             	cmp    %rcx,%rax
 b13:	0f 84 18 f9 ff ff    	je     431 <_Z17measure_sqrt_timeILy2EEvv+0x431>
 b19:	48 89 d9             	mov    %rbx,%rcx
 b1c:	ff d0                	callq  *%rax
 b1e:	0f be d0             	movsbl %al,%edx
 b21:	e9 0b f9 ff ff       	jmpq   431 <_Z17measure_sqrt_timeILy2EEvv+0x431>
 b26:	48 89 f1             	mov    %rsi,%rcx
 b29:	e8 00 00 00 00       	callq  b2e <_Z17measure_sqrt_timeILy2EEvv+0xb2e>
    time.reset_clock();
}
 b2e:	48 8b 06             	mov    (%rsi),%rax
 b31:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b38 <_Z17measure_sqrt_timeILy2EEvv+0xb38>
 b38:	ba 0a 00 00 00       	mov    $0xa,%edx
    { return __os.flush(); }
 b3d:	48 8b 40 30          	mov    0x30(%rax),%rax
 b41:	48 39 c8             	cmp    %rcx,%rax
 b44:	0f 84 dd fa ff ff    	je     627 <_Z17measure_sqrt_timeILy2EEvv+0x627>
 b4a:	48 89 f1             	mov    %rsi,%rcx
 b4d:	ff d0                	callq  *%rax
 b4f:	0f be d0             	movsbl %al,%edx
 b52:	e9 d0 fa ff ff       	jmpq   627 <_Z17measure_sqrt_timeILy2EEvv+0x627>
 b57:	48 89 d9             	mov    %rbx,%rcx
 b5a:	e8 00 00 00 00       	callq  b5f <_Z17measure_sqrt_timeILy2EEvv+0xb5f>
 b5f:	48 8b 03             	mov    (%rbx),%rax
          roots[i + k] = sqrt(floats[i + k]);
 b62:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b69 <_Z17measure_sqrt_timeILy2EEvv+0xb69>
 b69:	ba 0a 00 00 00       	mov    $0xa,%edx
 b6e:	48 8b 40 30          	mov    0x30(%rax),%rax
 b72:	48 39 c8             	cmp    %rcx,%rax
 b75:	0f 84 7b f7 ff ff    	je     2f6 <_Z17measure_sqrt_timeILy2EEvv+0x2f6>
 b7b:	48 89 d9             	mov    %rbx,%rcx
	  return _M_widen[static_cast<unsigned char>(__c)];
	this->_M_widen_init();
 b7e:	ff d0                	callq  *%rax
 b80:	0f be d0             	movsbl %al,%edx
 b83:	e9 6e f7 ff ff       	jmpq   2f6 <_Z17measure_sqrt_timeILy2EEvv+0x2f6>
	return this->do_widen(__c);
 b88:	48 89 d9             	mov    %rbx,%rcx
 b8b:	e8 00 00 00 00       	callq  b90 <_Z17measure_sqrt_timeILy2EEvv+0xb90>
 b90:	48 8b 03             	mov    (%rbx),%rax
 b93:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b9a <_Z17measure_sqrt_timeILy2EEvv+0xb9a>
 b9a:	ba 0a 00 00 00       	mov    $0xa,%edx
 b9f:	48 8b 40 30          	mov    0x30(%rax),%rax
 ba3:	48 39 c8             	cmp    %rcx,%rax
 ba6:	0f 84 99 fd ff ff    	je     945 <_Z17measure_sqrt_timeILy2EEvv+0x945>
 bac:	48 89 d9             	mov    %rbx,%rcx
	this->_M_widen_init();
 baf:	ff d0                	callq  *%rax
 bb1:	0f be d0             	movsbl %al,%edx
 bb4:	e9 8c fd ff ff       	jmpq   945 <_Z17measure_sqrt_timeILy2EEvv+0x945>
	return this->do_widen(__c);
 bb9:	48 89 f1             	mov    %rsi,%rcx
 bbc:	e8 00 00 00 00       	callq  bc1 <_Z17measure_sqrt_timeILy2EEvv+0xbc1>
 bc1:	48 8b 06             	mov    (%rsi),%rax
 bc4:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # bcb <_Z17measure_sqrt_timeILy2EEvv+0xbcb>
 bcb:	ba 0a 00 00 00       	mov    $0xa,%edx
 bd0:	48 8b 40 30          	mov    0x30(%rax),%rax
 bd4:	48 39 c8             	cmp    %rcx,%rax
 bd7:	0f 84 ef fc ff ff    	je     8cc <_Z17measure_sqrt_timeILy2EEvv+0x8cc>
 bdd:	48 89 f1             	mov    %rsi,%rcx
       *  @param __c  The char to convert.
       *  @return  The converted character.
      */
      virtual char_type
      do_widen(char __c) const
      { return __c; }
 be0:	ff d0                	callq  *%rax
 be2:	0f be d0             	movsbl %al,%edx
	this->_M_widen_init();
 be5:	e9 e2 fc ff ff       	jmpq   8cc <_Z17measure_sqrt_timeILy2EEvv+0x8cc>
	return this->do_widen(__c);
 bea:	90                   	nop
 beb:	90                   	nop
 bec:	90                   	nop
 bed:	90                   	nop
 bee:	90                   	nop
 bef:	90                   	nop

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
   c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
{
  13:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  1a:	00 
  1b:	c5 f8 29 75 d0       	vmovaps %xmm6,-0x30(%rbp)
  static std::random_device device;
  20:	c5 f8 29 7d e0       	vmovaps %xmm7,-0x20(%rbp)
  25:	c5 78 29 45 f0       	vmovaps %xmm8,-0x10(%rbp)
  2a:	c5 78 29 4d 00       	vmovaps %xmm9,0x0(%rbp)
  2f:	c5 78 29 55 10       	vmovaps %xmm10,0x10(%rbp)
  34:	b8 80 6a 18 00       	mov    $0x186a80,%eax
  39:	e8 00 00 00 00       	callq  3e <_Z17measure_sqrt_timeILy3EEvv+0x3e>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  3e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 45 <_Z17measure_sqrt_timeILy3EEvv+0x45>
  45:	ba 03 00 00 00       	mov    $0x3,%edx
      return this->_M_getval_pretr1();
  4a:	48 29 c4             	sub    %rax,%rsp
  4d:	e8 00 00 00 00       	callq  52 <_Z17measure_sqrt_timeILy3EEvv+0x52>
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  52:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  58:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 5f <_Z17measure_sqrt_timeILy3EEvv+0x5f>
  5f:	4c 8d ac 24 9f 00 00 	lea    0x9f(%rsp),%r13
  66:	00 
  67:	48 89 c6             	mov    %rax,%rsi
  6a:	48 89 c1             	mov    %rax,%rcx
  6d:	49 83 e5 80          	and    $0xffffffffffffff80,%r13
  71:	e8 00 00 00 00       	callq  76 <_Z17measure_sqrt_timeILy3EEvv+0x76>
  76:	48 8b 06             	mov    (%rsi),%rax
  79:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  7d:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  84:	00 
      __ret = __sum / __tmp;
  85:	48 85 db             	test   %rbx,%rbx
  88:	0f 84 e7 01 00 00    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
      if (__builtin_expect(__ret >= _RealType(1), 0))
  8e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  92:	0f 84 b7 09 00 00    	je     a4f <_Z17measure_sqrt_timeILy3EEvv+0xa4f>
  98:	0f be 53 43          	movsbl 0x43(%rbx),%edx
  9c:	48 89 f1             	mov    %rsi,%rcx
  9f:	e8 00 00 00 00       	callq  a4 <_Z17measure_sqrt_timeILy3EEvv+0xa4>
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
  a4:	48 89 c1             	mov    %rax,%rcx
  a7:	e8 00 00 00 00       	callq  ac <_Z17measure_sqrt_timeILy3EEvv+0xac>
}
  ac:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # b3 <_Z17measure_sqrt_timeILy3EEvv+0xb3>
  b3:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  b9:	48 8d 15 0c 00 00 00 	lea    0xc(%rip),%rdx        # cc <_Z17measure_sqrt_timeILy3EEvv+0xcc>
  c0:	e8 00 00 00 00       	callq  c5 <_Z17measure_sqrt_timeILy3EEvv+0xc5>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  c5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cc <_Z17measure_sqrt_timeILy3EEvv+0xcc>
  cc:	ba 40 0d 03 00       	mov    $0x30d40,%edx
  d1:	e8 00 00 00 00       	callq  d6 <_Z17measure_sqrt_timeILy3EEvv+0xd6>
	: _M_a(__a), _M_b(__b)
  d6:	41 b8 11 00 00 00    	mov    $0x11,%r8d
  dc:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # fb <_Z17measure_sqrt_timeILy3EEvv+0xfb>
  e3:	48 89 c6             	mov    %rax,%rsi
  e6:	48 89 c1             	mov    %rax,%rcx
  e9:	e8 00 00 00 00       	callq  ee <_Z17measure_sqrt_timeILy3EEvv+0xee>
  ee:	48 8b 06             	mov    (%rsi),%rax
  f1:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  f5:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  fc:	00 
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
  fd:	48 85 db             	test   %rbx,%rbx
 100:	0f 84 6f 01 00 00    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
    { _M_init_pretr1(__token); }
 106:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      { _M_string_length = __length; }
 10a:	0f 84 0e 09 00 00    	je     a1e <_Z17measure_sqrt_timeILy3EEvv+0xa1e>
 110:	0f be 53 43          	movsbl 0x43(%rbx),%edx
	: allocator_type(__a), _M_p(__dat) { }
 114:	48 89 f1             	mov    %rsi,%rcx
 117:	4d 8d a5 00 35 0c 00 	lea    0xc3500(%r13),%r12
 11e:	49 8d 9d 00 6a 18 00 	lea    0x186a00(%r13),%rbx
 125:	e8 00 00 00 00       	callq  12a <_Z17measure_sqrt_timeILy3EEvv+0x12a>
      { __c1 = __c2; }
 12a:	4d 89 e6             	mov    %r12,%r14
 12d:	48 89 c1             	mov    %rax,%rcx
 130:	e8 00 00 00 00       	callq  135 <_Z17measure_sqrt_timeILy3EEvv+0x135>
  static std::random_device device;
 135:	e8 10 00 00 00       	callq  14a <_Z17measure_sqrt_timeILy3EEvv+0x14a>
	if (!_M_is_local())
 13a:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
 13e:	49 83 c6 04          	add    $0x4,%r14
 142:	c5 d3 5a e8          	vcvtsd2ss %xmm0,%xmm5,%xmm5
 146:	c4 c1 7a 11 6e fc    	vmovss %xmm5,-0x4(%r14)
 14c:	49 39 de             	cmp    %rbx,%r14
 14f:	75 e4                	jne    135 <_Z17measure_sqrt_timeILy3EEvv+0x135>
 151:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 158 <_Z17measure_sqrt_timeILy3EEvv+0x158>
 158:	41 b8 09 00 00 00    	mov    $0x9,%r8d
 15e:	48 8d 15 2a 00 00 00 	lea    0x2a(%rip),%rdx        # 18f <_Z17measure_sqrt_timeILy3EEvv+0x18f>
	  __ret = std::nextafter(_RealType(1), _RealType(0));
 165:	e8 00 00 00 00       	callq  16a <_Z17measure_sqrt_timeILy3EEvv+0x16a>
 16a:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 171 <_Z17measure_sqrt_timeILy3EEvv+0x171>
 171:	48 8b 07             	mov    (%rdi),%rax
 174:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 178:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
 17f:	00 
 180:	48 85 db             	test   %rbx,%rbx
 183:	0f 84 ec 00 00 00    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
 189:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 18d:	0f 84 ed 08 00 00    	je     a80 <_Z17measure_sqrt_timeILy3EEvv+0xa80>
 193:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 197:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19e <_Z17measure_sqrt_timeILy3EEvv+0x19e>
 19e:	e8 00 00 00 00       	callq  1a3 <_Z17measure_sqrt_timeILy3EEvv+0x1a3>
 1a3:	48 89 c1             	mov    %rax,%rcx
 1a6:	e8 00 00 00 00       	callq  1ab <_Z17measure_sqrt_timeILy3EEvv+0x1ab>
 1ab:	e8 00 00 00 00       	callq  1b0 <_Z17measure_sqrt_timeILy3EEvv+0x1b0>
 1b0:	c7 45 ac e8 03 00 00 	movl   $0x3e8,-0x54(%rbp)
 1b7:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
 1bb:	49 89 c7             	mov    %rax,%r15
 1be:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 1c2:	4c 89 ee             	mov    %r13,%rsi
 1c5:	4c 89 e3             	mov    %r12,%rbx
 1c8:	e9 88 00 00 00       	jmpq   255 <_Z17measure_sqrt_timeILy3EEvv+0x255>
 1cd:	0f 1f 00             	nopl   (%rax)
 1d0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1d4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1d8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
 1dd:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
void measure_sqrt_time(void) { // --> Segmentation error occurs here according to gdb https://stackoverflow.com/questions/3718998/fixing-segmentation-faults-in-c
 1e1:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 1e5:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 1e9:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
 1ed:	0f 87 21 08 00 00    	ja     a14 <_Z17measure_sqrt_timeILy3EEvv+0xa14>
 1f3:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1f7:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1fb:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
 200:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
 204:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 208:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 20c:	c5 fa 11 5e 04       	vmovss %xmm3,0x4(%rsi)
 211:	0f 87 f3 07 00 00    	ja     a0a <_Z17measure_sqrt_timeILy3EEvv+0xa0a>
 217:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 21b:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
      { return _M_insert(__n); }
 21f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
 224:	c5 d3 5a ef          	vcvtsd2ss %xmm7,%xmm5,%xmm5
 228:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 22c:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 230:	c5 fa 11 6e 08       	vmovss %xmm5,0x8(%rsi)
	__ostream_insert(__out, __s,
 235:	0f 87 c5 07 00 00    	ja     a00 <_Z17measure_sqrt_timeILy3EEvv+0xa00>
 23b:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 23f:	48 83 c3 10          	add    $0x10,%rbx
 243:	48 83 c6 10          	add    $0x10,%rsi
      { return _M_insert(__n); }
 247:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
	__ostream_insert(__out, __s,
 24b:	c5 fa 11 5e fc       	vmovss %xmm3,-0x4(%rsi)
 250:	4c 39 f3             	cmp    %r14,%rbx
 253:	74 2b                	je     280 <_Z17measure_sqrt_timeILy3EEvv+0x280>
 255:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
      { return __check_facet(_M_ctype).widen(__c); }
 259:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
 25d:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 261:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
      if (!__f)
 265:	0f 86 65 ff ff ff    	jbe    1d0 <_Z17measure_sqrt_timeILy3EEvv+0x1d0>
 26b:	e8 00 00 00 00       	callq  270 <_Z17measure_sqrt_timeILy3EEvv+0x270>
	if (_M_widen_ok)
 270:	e9 5b ff ff ff       	jmpq   1d0 <_Z17measure_sqrt_timeILy3EEvv+0x1d0>
 275:	e8 00 00 00 00       	callq  27a <_Z17measure_sqrt_timeILy3EEvv+0x27a>
 27a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    { return flush(__os.put(__os.widen('\n'))); }
 280:	ff 4d ac             	decl   -0x54(%rbp)
 283:	0f 85 39 ff ff ff    	jne    1c2 <_Z17measure_sqrt_timeILy3EEvv+0x1c2>
    { return __os.flush(); }
 289:	e8 00 00 00 00       	callq  28e <_Z17measure_sqrt_timeILy3EEvv+0x28e>
	__ostream_insert(__out, __s,
 28e:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 295:	9b c4 20 
 298:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 29c:	4c 29 f8             	sub    %r15,%rax
 29f:	48 89 c1             	mov    %rax,%rcx
 2a2:	48 f7 ea             	imul   %rdx
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
 2a5:	48 c1 f9 3f          	sar    $0x3f,%rcx
 2a9:	48 c1 fa 07          	sar    $0x7,%rdx
 2ad:	48 29 ca             	sub    %rcx,%rdx
 2b0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2b7 <_Z17measure_sqrt_timeILy3EEvv+0x2b7>
 2b7:	e8 00 00 00 00       	callq  2bc <_Z17measure_sqrt_timeILy3EEvv+0x2bc>
 2bc:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 2c2:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 2fd <_Z17measure_sqrt_timeILy3EEvv+0x2fd>
 2c9:	48 89 c6             	mov    %rax,%rsi
 2cc:	48 89 c1             	mov    %rax,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
 2cf:	e8 00 00 00 00       	callq  2d4 <_Z17measure_sqrt_timeILy3EEvv+0x2d4>
      { return __check_facet(_M_ctype).widen(__c); }
 2d4:	48 8b 06             	mov    (%rsi),%rax
 2d7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 2db:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 2e2:	00 
      if (!__f)
 2e3:	48 85 db             	test   %rbx,%rbx
 2e6:	74 8d                	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
 2e8:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 2ec:	0f 84 e5 08 00 00    	je     bd7 <_Z17measure_sqrt_timeILy3EEvv+0xbd7>
 2f2:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 2f6:	48 89 f1             	mov    %rsi,%rcx
 2f9:	e8 00 00 00 00       	callq  2fe <_Z17measure_sqrt_timeILy3EEvv+0x2fe>
 2fe:	48 89 c1             	mov    %rax,%rcx
 301:	e8 00 00 00 00       	callq  306 <_Z17measure_sqrt_timeILy3EEvv+0x306>
 306:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 30d <_Z17measure_sqrt_timeILy3EEvv+0x30d>
    { return __os.flush(); }
 30d:	41 b8 37 00 00 00    	mov    $0x37,%r8d
 313:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 35a <_Z17measure_sqrt_timeILy3EEvv+0x35a>
       floats[i] = random_double();
 31a:	e8 00 00 00 00       	callq  31f <_Z17measure_sqrt_timeILy3EEvv+0x31f>
 31f:	48 8b 07             	mov    (%rdi),%rax
 322:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 326:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
 32d:	00 
    for (int i = 0; i < 4 * N; i++) {
 32e:	48 85 db             	test   %rbx,%rbx
	__ostream_insert(__out, __s,
 331:	0f 84 3e ff ff ff    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
 337:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 33b:	0f 84 70 07 00 00    	je     ab1 <_Z17measure_sqrt_timeILy3EEvv+0xab1>
 341:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 345:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 34c <_Z17measure_sqrt_timeILy3EEvv+0x34c>
    { return flush(__os.put(__os.widen('\n'))); }
 34c:	e8 00 00 00 00       	callq  351 <_Z17measure_sqrt_timeILy3EEvv+0x351>
 351:	48 89 c1             	mov    %rax,%rcx
      { return __check_facet(_M_ctype).widen(__c); }
 354:	e8 00 00 00 00       	callq  359 <_Z17measure_sqrt_timeILy3EEvv+0x359>
 359:	e8 00 00 00 00       	callq  35e <_Z17measure_sqrt_timeILy3EEvv+0x35e>
 35e:	ba e8 03 00 00       	mov    $0x3e8,%edx
      if (!__f)
 363:	c5 f8 28 3d 50 01 00 	vmovaps 0x150(%rip),%xmm7        # 4bb <_Z17measure_sqrt_timeILy3EEvv+0x4bb>
 36a:	00 
 36b:	c5 f8 28 35 60 01 00 	vmovaps 0x160(%rip),%xmm6        # 4d3 <_Z17measure_sqrt_timeILy3EEvv+0x4d3>
 372:	00 
 373:	48 89 c3             	mov    %rax,%rbx
 376:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 37a:	31 c0                	xor    %eax,%eax
 37c:	0f 1f 40 00          	nopl   0x0(%rax)
 380:	c4 c1 78 28 04 04    	vmovaps (%r12,%rax,1),%xmm0
    { return __os.flush(); }
 386:	48 83 c0 10          	add    $0x10,%rax
 38a:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
       start = steady_clock::now();
 38f:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
 393:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 397:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 39b:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 39f:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 3a3:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 3a7:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 3ab:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
 3af:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
          roots[i + k] = sqrt(floats[i + k]);
 3b3:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 3b7:	c4 a1 78 29 44 28 f0 	vmovaps %xmm0,-0x10(%rax,%r13,1)
 3be:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
 3c4:	75 ba                	jne    380 <_Z17measure_sqrt_timeILy3EEvv+0x380>
 3c6:	ff ca                	dec    %edx
 3c8:	75 b0                	jne    37a <_Z17measure_sqrt_timeILy3EEvv+0x37a>
 3ca:	e8 00 00 00 00       	callq  3cf <_Z17measure_sqrt_timeILy3EEvv+0x3cf>
 3cf:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 3d6:	9b c4 20 
 3d9:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 3dd:	48 29 d8             	sub    %rbx,%rax
 3e0:	48 89 c1             	mov    %rax,%rcx
 3e3:	48 f7 ea             	imul   %rdx
 3e6:	48 c1 f9 3f          	sar    $0x3f,%rcx
 3ea:	48 c1 fa 07          	sar    $0x7,%rdx
 3ee:	48 29 ca             	sub    %rcx,%rdx
 3f1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 3f8 <_Z17measure_sqrt_timeILy3EEvv+0x3f8>
 3f8:	e8 00 00 00 00       	callq  3fd <_Z17measure_sqrt_timeILy3EEvv+0x3fd>
 3fd:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 403:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 43e <_Z17measure_sqrt_timeILy3EEvv+0x43e>
 40a:	48 89 c6             	mov    %rax,%rsi
 40d:	48 89 c1             	mov    %rax,%rcx
 410:	e8 00 00 00 00       	callq  415 <_Z17measure_sqrt_timeILy3EEvv+0x415>
 415:	48 8b 06             	mov    (%rsi),%rax
 418:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 41c:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 423:	00 
 424:	48 85 db             	test   %rbx,%rbx
 427:	0f 84 48 fe ff ff    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
 42d:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      for (int i = 0; i < 4 * N; i += 4) {
 431:	0f 84 3e 07 00 00    	je     b75 <_Z17measure_sqrt_timeILy3EEvv+0xb75>
          roots[i + k] = sqrt(floats[i + k]);
 437:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 43b:	48 89 f1             	mov    %rsi,%rcx
 43e:	e8 00 00 00 00       	callq  443 <_Z17measure_sqrt_timeILy3EEvv+0x443>
 443:	48 89 c1             	mov    %rax,%rcx
 446:	e8 00 00 00 00       	callq  44b <_Z17measure_sqrt_timeILy3EEvv+0x44b>
 44b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 452 <_Z17measure_sqrt_timeILy3EEvv+0x452>
 452:	41 b8 39 00 00 00    	mov    $0x39,%r8d
	__throw_bad_cast();
 458:	48 8d 15 78 00 00 00 	lea    0x78(%rip),%rdx        # 4d7 <_Z17measure_sqrt_timeILy3EEvv+0x4d7>
 45f:	e8 00 00 00 00       	callq  464 <_Z17measure_sqrt_timeILy3EEvv+0x464>
    for (int j = 0; j < LOOP; j++) {
 464:	48 8b 07             	mov    (%rdi),%rax
 467:	48 8b 40 e8          	mov    -0x18(%rax),%rax
       end = steady_clock::now();
 46b:	48 8b 9c 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rbx
 472:	00 
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 473:	48 85 db             	test   %rbx,%rbx
 476:	0f 84 f9 fd ff ff    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
 47c:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 480:	0f 84 5c 06 00 00    	je     ae2 <_Z17measure_sqrt_timeILy3EEvv+0xae2>
 486:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 48a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 491 <_Z17measure_sqrt_timeILy3EEvv+0x491>
      { return _M_insert(__n); }
 491:	e8 00 00 00 00       	callq  496 <_Z17measure_sqrt_timeILy3EEvv+0x496>
 496:	48 89 c1             	mov    %rax,%rcx
 499:	e8 00 00 00 00       	callq  49e <_Z17measure_sqrt_timeILy3EEvv+0x49e>
	__ostream_insert(__out, __s,
 49e:	e8 00 00 00 00       	callq  4a3 <_Z17measure_sqrt_timeILy3EEvv+0x4a3>
 4a3:	ba e8 03 00 00       	mov    $0x3e8,%edx
 4a8:	48 89 c6             	mov    %rax,%rsi
      { return _M_insert(__n); }
 4ab:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
	__ostream_insert(__out, __s,
 4af:	4c 89 e0             	mov    %r12,%rax
 4b2:	4c 89 eb             	mov    %r13,%rbx
    { return flush(__os.put(__os.widen('\n'))); }
 4b5:	c5 f8 28 20          	vmovaps (%rax),%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 4b9:	c5 f8 28 40 20       	vmovaps 0x20(%rax),%xmm0
 4be:	48 83 c3 40          	add    $0x40,%rbx
 4c2:	48 83 c0 40          	add    $0x40,%rax
      if (!__f)
 4c6:	c5 d8 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm2
 4cc:	c5 f8 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm1
 4d2:	c5 d8 c6 60 d0 dd    	vshufps $0xdd,-0x30(%rax),%xmm4,%xmm4
 4d8:	c5 f8 c6 40 f0 dd    	vshufps $0xdd,-0x10(%rax),%xmm0,%xmm0
    { return __os.flush(); }
 4de:	c5 e8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm2,%xmm3
 4e3:	c5 e8 c6 c9 dd       	vshufps $0xdd,%xmm1,%xmm2,%xmm1
	__ostream_insert(__out, __s,
 4e8:	c5 d8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm2
 4ed:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
 4f2:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
 4f7:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 4fb:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
 4ff:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 503:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 507:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 50b:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
      if (!__f)
 50f:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 513:	c5 e0 5e dc          	vdivps %xmm4,%xmm3,%xmm3
 517:	c5 e0 58 dc          	vaddps %xmm4,%xmm3,%xmm3
 51b:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
 520:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 524:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 528:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
 52c:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 530:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
    { return __os.flush(); }
 534:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 538:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
       start = steady_clock::now();
 53c:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 540:	c5 e8 5e d4          	vdivps %xmm4,%xmm2,%xmm2
 544:	c5 e8 58 d4          	vaddps %xmm4,%xmm2,%xmm2
 548:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
 54d:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 551:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 555:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 559:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 55d:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 561:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 565:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 569:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 56d:	c5 f0 5e cc          	vdivps %xmm4,%xmm1,%xmm1
 571:	c5 f0 58 cc          	vaddps %xmm4,%xmm1,%xmm1
    root = 0.5 * (root + (* a / root));
 575:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
 57a:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 57e:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 582:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 586:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 58a:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
        roots[i] = sqrt1<LOOPS>(floats + i);
 58e:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 592:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 596:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 59a:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
    for (int j = 0; j < LOOP; j++) {
 59e:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
       end = steady_clock::now();
 5a2:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 5a6:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
 5aa:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 5ae:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
 5b2:	c5 e8 15 d0          	vunpckhps %xmm0,%xmm2,%xmm2
 5b6:	c5 d8 14 c3          	vunpcklps %xmm3,%xmm4,%xmm0
 5ba:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
 5be:	c5 f8 29 43 c0       	vmovaps %xmm0,-0x40(%rbx)
 5c3:	c5 f0 14 c2          	vunpcklps %xmm2,%xmm1,%xmm0
      { return _M_insert(__n); }
 5c7:	c5 f0 15 ca          	vunpckhps %xmm2,%xmm1,%xmm1
 5cb:	c5 f8 29 63 d0       	vmovaps %xmm4,-0x30(%rbx)
 5d0:	c5 f8 29 43 e0       	vmovaps %xmm0,-0x20(%rbx)
	__ostream_insert(__out, __s,
 5d5:	c5 f8 29 4b f0       	vmovaps %xmm1,-0x10(%rbx)
 5da:	49 39 dc             	cmp    %rbx,%r12
 5dd:	0f 85 d2 fe ff ff    	jne    4b5 <_Z17measure_sqrt_timeILy3EEvv+0x4b5>
 5e3:	ff ca                	dec    %edx
 5e5:	0f 85 c4 fe ff ff    	jne    4af <_Z17measure_sqrt_timeILy3EEvv+0x4af>
    { return flush(__os.put(__os.widen('\n'))); }
 5eb:	e8 00 00 00 00       	callq  5f0 <_Z17measure_sqrt_timeILy3EEvv+0x5f0>
      { return __check_facet(_M_ctype).widen(__c); }
 5f0:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 5f7:	9b c4 20 
      if (!__f)
 5fa:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 5fe:	48 29 f0             	sub    %rsi,%rax
 601:	48 89 c1             	mov    %rax,%rcx
 604:	48 f7 ea             	imul   %rdx
 607:	48 c1 f9 3f          	sar    $0x3f,%rcx
 60b:	48 c1 fa 07          	sar    $0x7,%rdx
 60f:	48 29 ca             	sub    %rcx,%rdx
 612:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 619 <_Z17measure_sqrt_timeILy3EEvv+0x619>
    { return __os.flush(); }
 619:	e8 00 00 00 00       	callq  61e <_Z17measure_sqrt_timeILy3EEvv+0x61e>
 61e:	41 b8 05 00 00 00    	mov    $0x5,%r8d
	__ostream_insert(__out, __s,
 624:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 65f <_Z17measure_sqrt_timeILy3EEvv+0x65f>
 62b:	49 89 c6             	mov    %rax,%r14
 62e:	48 89 c1             	mov    %rax,%rcx
 631:	e8 00 00 00 00       	callq  636 <_Z17measure_sqrt_timeILy3EEvv+0x636>
 636:	49 8b 06             	mov    (%r14),%rax
 639:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
 63d:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
 644:	00 
 645:	48 85 f6             	test   %rsi,%rsi
 648:	0f 84 27 fc ff ff    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
      if (!__f)
 64e:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 652:	0f 84 4e 05 00 00    	je     ba6 <_Z17measure_sqrt_timeILy3EEvv+0xba6>
 658:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 65c:	4c 89 f1             	mov    %r14,%rcx
 65f:	e8 00 00 00 00       	callq  664 <_Z17measure_sqrt_timeILy3EEvv+0x664>
    { return flush(__os.put(__os.widen('\n'))); }
 664:	48 89 c1             	mov    %rax,%rcx
 667:	e8 00 00 00 00       	callq  66c <_Z17measure_sqrt_timeILy3EEvv+0x66c>
    { return __os.flush(); }
 66c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 673 <_Z17measure_sqrt_timeILy3EEvv+0x673>
 673:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
       start = steady_clock::now();
 679:	48 8d 15 b8 00 00 00 	lea    0xb8(%rip),%rdx        # 738 <_Z17measure_sqrt_timeILy3EEvv+0x738>
 680:	e8 00 00 00 00       	callq  685 <_Z17measure_sqrt_timeILy3EEvv+0x685>
 685:	48 8b 07             	mov    (%rdi),%rax
 688:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 68c:	48 8b b4 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rsi
 693:	00 
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 694:	48 85 f6             	test   %rsi,%rsi
 697:	0f 84 d8 fb ff ff    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
 69d:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 6a1:	0f 84 6c 04 00 00    	je     b13 <_Z17measure_sqrt_timeILy3EEvv+0xb13>
 6a7:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 6ab:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 6b2 <_Z17measure_sqrt_timeILy3EEvv+0x6b2>
 6b2:	e8 00 00 00 00       	callq  6b7 <_Z17measure_sqrt_timeILy3EEvv+0x6b7>
 6b7:	48 89 c1             	mov    %rax,%rcx
 6ba:	e8 00 00 00 00       	callq  6bf <_Z17measure_sqrt_timeILy3EEvv+0x6bf>
 6bf:	e8 00 00 00 00       	callq  6c4 <_Z17measure_sqrt_timeILy3EEvv+0x6c4>
 6c4:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
 6c9:	48 89 c6             	mov    %rax,%rsi
 6cc:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 6d0:	4c 89 e2             	mov    %r12,%rdx
 6d3:	4c 89 e8             	mov    %r13,%rax
    root = 0.5 * (root + (* a / root));
 6d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6dd:	00 00 00 
 6e0:	c5 f8 28 22          	vmovaps (%rdx),%xmm4
 6e4:	c5 f8 28 42 20       	vmovaps 0x20(%rdx),%xmm0
 6e9:	48 83 c0 40          	add    $0x40,%rax
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 6ed:	48 83 c2 40          	add    $0x40,%rdx
 6f1:	c5 f8 c6 4a f0 88    	vshufps $0x88,-0x10(%rdx),%xmm0,%xmm1
    root = 0.5 * (root + (* a / root));
 6f7:	c5 d8 c6 5a d0 88    	vshufps $0x88,-0x30(%rdx),%xmm4,%xmm3
 6fd:	c5 f8 c6 42 f0 dd    	vshufps $0xdd,-0x10(%rdx),%xmm0,%xmm0
 703:	c5 d8 c6 62 d0 dd    	vshufps $0xdd,-0x30(%rdx),%xmm4,%xmm4
 709:	c5 e0 c6 d1 88       	vshufps $0x88,%xmm1,%xmm3,%xmm2
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 70e:	c5 e0 c6 d9 dd       	vshufps $0xdd,%xmm1,%xmm3,%xmm3
 713:	c5 d8 c6 c8 88       	vshufps $0x88,%xmm0,%xmm4,%xmm1
    root = 0.5 * (root + (* a / root));
 718:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
 71d:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
 722:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 726:	c5 e8 5e ec          	vdivps %xmm4,%xmm2,%xmm5
 72a:	c5 d0 58 e4          	vaddps %xmm4,%xmm5,%xmm4
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 72e:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 732:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
    root = 0.5 * (root + (* a / root));
 737:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 73b:	c5 70 5e cc          	vdivps %xmm4,%xmm1,%xmm9
 73f:	c5 b0 58 e4          	vaddps %xmm4,%xmm9,%xmm4
 743:	c5 58 59 ce          	vmulps %xmm6,%xmm4,%xmm9
 747:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
 74c:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
 750:	c5 60 5e c4          	vdivps %xmm4,%xmm3,%xmm8
 754:	c5 b8 58 e4          	vaddps %xmm4,%xmm8,%xmm4
 758:	c5 58 59 c6          	vmulps %xmm6,%xmm4,%xmm8
 75c:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
 761:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 765:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
 769:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 76d:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
 771:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 775:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
 779:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
 77e:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
 782:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 787:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
 78c:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
    for (int j = 0; j < LOOP; j++) {
 790:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 795:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
       end = steady_clock::now();
 799:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 79d:	c5 e8 5e d5          	vdivps %xmm5,%xmm2,%xmm2
 7a1:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 7a5:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 7a9:	c5 e8 58 d5          	vaddps %xmm5,%xmm2,%xmm2
 7ad:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
 7b1:	c5 e8 59 ee          	vmulps %xmm6,%xmm2,%xmm5
 7b5:	c4 c1 70 5e d1       	vdivps %xmm9,%xmm1,%xmm2
 7ba:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
      { return _M_insert(__n); }
 7be:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 7c2:	c4 c1 60 5e c8       	vdivps %xmm8,%xmm3,%xmm1
 7c7:	c4 c1 68 58 d1       	vaddps %xmm9,%xmm2,%xmm2
	__ostream_insert(__out, __s,
 7cc:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 7d0:	c5 e8 14 e0          	vunpcklps %xmm0,%xmm2,%xmm4
 7d4:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
      { return _M_insert(__n); }
 7d8:	c4 c1 70 58 c8       	vaddps %xmm8,%xmm1,%xmm1
	__ostream_insert(__out, __s,
 7dd:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
    { return flush(__os.put(__os.widen('\n'))); }
 7e1:	c5 d0 14 d9          	vunpcklps %xmm1,%xmm5,%xmm3
      { return __check_facet(_M_ctype).widen(__c); }
 7e5:	c5 d0 15 c9          	vunpckhps %xmm1,%xmm5,%xmm1
 7e9:	c5 e0 14 d4          	vunpcklps %xmm4,%xmm3,%xmm2
 7ed:	c5 e0 15 dc          	vunpckhps %xmm4,%xmm3,%xmm3
      if (!__f)
 7f1:	c5 f8 29 50 c0       	vmovaps %xmm2,-0x40(%rax)
 7f6:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
 7fa:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
 7fe:	c5 f8 29 58 d0       	vmovaps %xmm3,-0x30(%rax)
 803:	c5 f8 29 50 e0       	vmovaps %xmm2,-0x20(%rax)
 808:	c5 f8 29 48 f0       	vmovaps %xmm1,-0x10(%rax)
 80d:	48 39 d8             	cmp    %rbx,%rax
    { return __os.flush(); }
 810:	0f 85 ca fe ff ff    	jne    6e0 <_Z17measure_sqrt_timeILy3EEvv+0x6e0>
 816:	ff c9                	dec    %ecx
	__ostream_insert(__out, __s,
 818:	0f 85 b2 fe ff ff    	jne    6d0 <_Z17measure_sqrt_timeILy3EEvv+0x6d0>
 81e:	e8 00 00 00 00       	callq  823 <_Z17measure_sqrt_timeILy3EEvv+0x823>
 823:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 82a:	9b c4 20 
 82d:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    { return flush(__os.put(__os.widen('\n'))); }
 831:	48 29 f0             	sub    %rsi,%rax
      { return __check_facet(_M_ctype).widen(__c); }
 834:	48 89 c1             	mov    %rax,%rcx
 837:	48 f7 ea             	imul   %rdx
 83a:	48 c1 f9 3f          	sar    $0x3f,%rcx
 83e:	48 c1 fa 07          	sar    $0x7,%rdx
      if (!__f)
 842:	48 29 ca             	sub    %rcx,%rdx
 845:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 84c <_Z17measure_sqrt_timeILy3EEvv+0x84c>
 84c:	e8 00 00 00 00       	callq  851 <_Z17measure_sqrt_timeILy3EEvv+0x851>
 851:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 857:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 892 <_Z17measure_sqrt_timeILy3EEvv+0x892>
 85e:	48 89 c6             	mov    %rax,%rsi
 861:	48 89 c1             	mov    %rax,%rcx
    { return __os.flush(); }
 864:	e8 00 00 00 00       	callq  869 <_Z17measure_sqrt_timeILy3EEvv+0x869>
 869:	48 8b 06             	mov    (%rsi),%rax
       start = steady_clock::now();
 86c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 870:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 877:	00 
 878:	48 85 db             	test   %rbx,%rbx
 87b:	0f 84 f4 f9 ff ff    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
    initial[0] = (1 << 29) + (ai[0] >> 1) - (1 << 22) - 0x4C000;
 881:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 885:	0f 84 b9 02 00 00    	je     b44 <_Z17measure_sqrt_timeILy3EEvv+0xb44>
 88b:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 88f:	48 89 f1             	mov    %rsi,%rcx
 892:	e8 00 00 00 00       	callq  897 <_Z17measure_sqrt_timeILy3EEvv+0x897>
 897:	48 89 c1             	mov    %rax,%rcx
 89a:	e8 00 00 00 00       	callq  89f <_Z17measure_sqrt_timeILy3EEvv+0x89f>
 89f:	e8 00 00 00 00       	callq  8a4 <_Z17measure_sqrt_timeILy3EEvv+0x8a4>
 8a4:	ba e8 03 00 00       	mov    $0x3e8,%edx
 8a9:	48 89 c6             	mov    %rax,%rsi
 8ac:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 8b0:	31 c0                	xor    %eax,%eax
 8b2:	c4 c1 78 28 04 04    	vmovaps (%r12,%rax,1),%xmm0
 8b8:	48 83 c0 10          	add    $0x10,%rax
 8bc:	c5 e9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm2
 8c1:	c5 e9 fe d7          	vpaddd %xmm7,%xmm2,%xmm2
 8c5:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8c9:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 8cd:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
 8d1:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 8d5:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8d9:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8dd:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8e1:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
 8e5:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 8e9:	c4 a1 78 29 44 28 f0 	vmovaps %xmm0,-0x10(%rax,%r13,1)
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8f0:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 8f6:	75 ba                	jne    8b2 <_Z17measure_sqrt_timeILy3EEvv+0x8b2>
 8f8:	ff ca                	dec    %edx
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8fa:	75 b4                	jne    8b0 <_Z17measure_sqrt_timeILy3EEvv+0x8b0>
 8fc:	e8 00 00 00 00       	callq  901 <_Z17measure_sqrt_timeILy3EEvv+0x901>
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 901:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 908 <_Z17measure_sqrt_timeILy3EEvv+0x908>
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
 908:	41 b8 34 00 00 00    	mov    $0x34,%r8d
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 90e:	48 8d 15 e8 00 00 00 	lea    0xe8(%rip),%rdx        # 9fd <_Z17measure_sqrt_timeILy3EEvv+0x9fd>
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 915:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 919:	48 29 f0             	sub    %rsi,%rax
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 91c:	48 89 c3             	mov    %rax,%rbx
 91f:	e8 00 00 00 00       	callq  924 <_Z17measure_sqrt_timeILy3EEvv+0x924>
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 924:	48 8b 07             	mov    (%rdi),%rax
 927:	48 8b 40 e8          	mov    -0x18(%rax),%rax
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 92b:	48 8b b4 07 f0 00 00 	mov    0xf0(%rdi,%rax,1),%rsi
 932:	00 
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 933:	48 85 f6             	test   %rsi,%rsi
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 936:	0f 84 39 f9 ff ff    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
 93c:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 940:	0f 84 f3 02 00 00    	je     c39 <_Z17measure_sqrt_timeILy3EEvv+0xc39>
 946:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 94a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 951 <_Z17measure_sqrt_timeILy3EEvv+0x951>
 951:	e8 00 00 00 00       	callq  956 <_Z17measure_sqrt_timeILy3EEvv+0x956>
 956:	48 89 c1             	mov    %rax,%rcx
 959:	e8 00 00 00 00       	callq  95e <_Z17measure_sqrt_timeILy3EEvv+0x95e>
 95e:	48 89 d8             	mov    %rbx,%rax
 961:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 968:	9b c4 20 
 96b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 972 <_Z17measure_sqrt_timeILy3EEvv+0x972>
 972:	48 c1 fb 3f          	sar    $0x3f,%rbx
 976:	48 f7 ea             	imul   %rdx
 979:	48 c1 fa 07          	sar    $0x7,%rdx
 97d:	48 29 da             	sub    %rbx,%rdx
 980:	e8 00 00 00 00       	callq  985 <_Z17measure_sqrt_timeILy3EEvv+0x985>
    for (int j = 0; j < LOOP; j++) {
 985:	41 b8 05 00 00 00    	mov    $0x5,%r8d
       end = steady_clock::now();
 98b:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 9c6 <_Z17measure_sqrt_timeILy3EEvv+0x9c6>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 992:	48 89 c6             	mov    %rax,%rsi
 995:	48 89 c1             	mov    %rax,%rcx
 998:	e8 00 00 00 00       	callq  99d <_Z17measure_sqrt_timeILy3EEvv+0x99d>
 99d:	48 8b 06             	mov    (%rsi),%rax
 9a0:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 9a4:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 9ab:	00 
 9ac:	48 85 db             	test   %rbx,%rbx
 9af:	0f 84 c0 f8 ff ff    	je     275 <_Z17measure_sqrt_timeILy3EEvv+0x275>
      { return _M_insert(__n); }
 9b5:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 9b9:	0f 84 49 02 00 00    	je     c08 <_Z17measure_sqrt_timeILy3EEvv+0xc08>
	__ostream_insert(__out, __s,
 9bf:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 9c3:	48 89 f1             	mov    %rsi,%rcx
 9c6:	e8 00 00 00 00       	callq  9cb <_Z17measure_sqrt_timeILy3EEvv+0x9cb>
      { return _M_insert(__n); }
 9cb:	90                   	nop
 9cc:	c5 f8 28 75 d0       	vmovaps -0x30(%rbp),%xmm6
	__ostream_insert(__out, __s,
 9d1:	c5 f8 28 7d e0       	vmovaps -0x20(%rbp),%xmm7
    { return flush(__os.put(__os.widen('\n'))); }
 9d6:	c5 78 28 45 f0       	vmovaps -0x10(%rbp),%xmm8
      { return __check_facet(_M_ctype).widen(__c); }
 9db:	48 89 c1             	mov    %rax,%rcx
 9de:	c5 78 28 4d 00       	vmovaps 0x0(%rbp),%xmm9
 9e3:	c5 78 28 55 10       	vmovaps 0x10(%rbp),%xmm10
      if (!__f)
 9e8:	48 8d 65 28          	lea    0x28(%rbp),%rsp
 9ec:	5b                   	pop    %rbx
 9ed:	5e                   	pop    %rsi
 9ee:	5f                   	pop    %rdi
 9ef:	41 5c                	pop    %r12
 9f1:	41 5d                	pop    %r13
 9f3:	41 5e                	pop    %r14
 9f5:	41 5f                	pop    %r15
 9f7:	5d                   	pop    %rbp
 9f8:	e9 00 00 00 00       	jmpq   9fd <_Z17measure_sqrt_timeILy3EEvv+0x9fd>
 9fd:	0f 1f 00             	nopl   (%rax)
 a00:	e8 00 00 00 00       	callq  a05 <_Z17measure_sqrt_timeILy3EEvv+0xa05>
    { return __os.flush(); }
 a05:	e9 31 f8 ff ff       	jmpq   23b <_Z17measure_sqrt_timeILy3EEvv+0x23b>
 a0a:	e8 00 00 00 00       	callq  a0f <_Z17measure_sqrt_timeILy3EEvv+0xa0f>
       start = steady_clock::now();
 a0f:	e9 03 f8 ff ff       	jmpq   217 <_Z17measure_sqrt_timeILy3EEvv+0x217>
 a14:	e8 00 00 00 00       	callq  a19 <_Z17measure_sqrt_timeILy3EEvv+0xa19>
 a19:	e9 d5 f7 ff ff       	jmpq   1f3 <_Z17measure_sqrt_timeILy3EEvv+0x1f3>
 a1e:	48 89 d9             	mov    %rbx,%rcx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 a21:	e8 00 00 00 00       	callq  a26 <_Z17measure_sqrt_timeILy3EEvv+0xa26>
 a26:	48 8b 03             	mov    (%rbx),%rax
 a29:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # a30 <_Z17measure_sqrt_timeILy3EEvv+0xa30>
 a30:	ba 0a 00 00 00       	mov    $0xa,%edx
    * root = 0.5 * (* root + (* a / * root));
 a35:	48 8b 40 30          	mov    0x30(%rax),%rax
 a39:	48 39 c8             	cmp    %rcx,%rax
 a3c:	0f 84 d2 f6 ff ff    	je     114 <_Z17measure_sqrt_timeILy3EEvv+0x114>
 a42:	48 89 d9             	mov    %rbx,%rcx
 a45:	ff d0                	callq  *%rax
 a47:	0f be d0             	movsbl %al,%edx
 a4a:	e9 c5 f6 ff ff       	jmpq   114 <_Z17measure_sqrt_timeILy3EEvv+0x114>
 a4f:	48 89 d9             	mov    %rbx,%rcx
      for (int i = 0; i < 4 * N; i += 4) {
 a52:	e8 00 00 00 00       	callq  a57 <_Z17measure_sqrt_timeILy3EEvv+0xa57>
 a57:	48 8b 03             	mov    (%rbx),%rax
    for (int j = 0; j < LOOP; j++) {
 a5a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # a61 <_Z17measure_sqrt_timeILy3EEvv+0xa61>
       end = steady_clock::now();
 a61:	ba 0a 00 00 00       	mov    $0xa,%edx
	__ostream_insert(__out, __s,
 a66:	48 8b 40 30          	mov    0x30(%rax),%rax
 a6a:	48 39 c8             	cmp    %rcx,%rax
 a6d:	0f 84 29 f6 ff ff    	je     9c <_Z17measure_sqrt_timeILy3EEvv+0x9c>
 a73:	48 89 d9             	mov    %rbx,%rcx
 a76:	ff d0                	callq  *%rax
 a78:	0f be d0             	movsbl %al,%edx
 a7b:	e9 1c f6 ff ff       	jmpq   9c <_Z17measure_sqrt_timeILy3EEvv+0x9c>
 a80:	48 89 d9             	mov    %rbx,%rcx
 a83:	e8 00 00 00 00       	callq  a88 <_Z17measure_sqrt_timeILy3EEvv+0xa88>
    { return flush(__os.put(__os.widen('\n'))); }
 a88:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
 a8b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # a92 <_Z17measure_sqrt_timeILy3EEvv+0xa92>
 a92:	ba 0a 00 00 00       	mov    $0xa,%edx
      if (!__f)
 a97:	48 8b 40 30          	mov    0x30(%rax),%rax
 a9b:	48 39 c8             	cmp    %rcx,%rax
 a9e:	0f 84 f3 f6 ff ff    	je     197 <_Z17measure_sqrt_timeILy3EEvv+0x197>
 aa4:	48 89 d9             	mov    %rbx,%rcx
 aa7:	ff d0                	callq  *%rax
 aa9:	0f be d0             	movsbl %al,%edx
 aac:	e9 e6 f6 ff ff       	jmpq   197 <_Z17measure_sqrt_timeILy3EEvv+0x197>
 ab1:	48 89 d9             	mov    %rbx,%rcx
 ab4:	e8 00 00 00 00       	callq  ab9 <_Z17measure_sqrt_timeILy3EEvv+0xab9>
    { return __os.flush(); }
 ab9:	48 8b 03             	mov    (%rbx),%rax
 abc:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ac3 <_Z17measure_sqrt_timeILy3EEvv+0xac3>
    std::cout << time.time_clock().count() / LOOP  << " [ns]" << std::endl;
 ac3:	ba 0a 00 00 00       	mov    $0xa,%edx
 ac8:	48 8b 40 30          	mov    0x30(%rax),%rax
 acc:	48 39 c8             	cmp    %rcx,%rax
      { return _M_insert(__n); }
 acf:	0f 84 70 f8 ff ff    	je     345 <_Z17measure_sqrt_timeILy3EEvv+0x345>
 ad5:	48 89 d9             	mov    %rbx,%rcx
 ad8:	ff d0                	callq  *%rax
 ada:	0f be d0             	movsbl %al,%edx
 add:	e9 63 f8 ff ff       	jmpq   345 <_Z17measure_sqrt_timeILy3EEvv+0x345>
 ae2:	48 89 d9             	mov    %rbx,%rcx
 ae5:	e8 00 00 00 00       	callq  aea <_Z17measure_sqrt_timeILy3EEvv+0xaea>
	__ostream_insert(__out, __s,
 aea:	48 8b 03             	mov    (%rbx),%rax
 aed:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # af4 <_Z17measure_sqrt_timeILy3EEvv+0xaf4>
      { return _M_insert(__n); }
 af4:	ba 0a 00 00 00       	mov    $0xa,%edx
	__ostream_insert(__out, __s,
 af9:	48 8b 40 30          	mov    0x30(%rax),%rax
 afd:	48 39 c8             	cmp    %rcx,%rax
    { return flush(__os.put(__os.widen('\n'))); }
 b00:	0f 84 84 f9 ff ff    	je     48a <_Z17measure_sqrt_timeILy3EEvv+0x48a>
      { return __check_facet(_M_ctype).widen(__c); }
 b06:	48 89 d9             	mov    %rbx,%rcx
 b09:	ff d0                	callq  *%rax
 b0b:	0f be d0             	movsbl %al,%edx
      if (!__f)
 b0e:	e9 77 f9 ff ff       	jmpq   48a <_Z17measure_sqrt_timeILy3EEvv+0x48a>
 b13:	48 89 f1             	mov    %rsi,%rcx
 b16:	e8 00 00 00 00       	callq  b1b <_Z17measure_sqrt_timeILy3EEvv+0xb1b>
 b1b:	48 8b 06             	mov    (%rsi),%rax
 b1e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b25 <_Z17measure_sqrt_timeILy3EEvv+0xb25>
 b25:	ba 0a 00 00 00       	mov    $0xa,%edx
 b2a:	48 8b 40 30          	mov    0x30(%rax),%rax
}
 b2e:	48 39 c8             	cmp    %rcx,%rax
 b31:	0f 84 74 fb ff ff    	je     6ab <_Z17measure_sqrt_timeILy3EEvv+0x6ab>
 b37:	48 89 f1             	mov    %rsi,%rcx
 b3a:	ff d0                	callq  *%rax
 b3c:	0f be d0             	movsbl %al,%edx
    { return __os.flush(); }
 b3f:	e9 67 fb ff ff       	jmpq   6ab <_Z17measure_sqrt_timeILy3EEvv+0x6ab>
 b44:	48 89 d9             	mov    %rbx,%rcx
 b47:	e8 00 00 00 00       	callq  b4c <_Z17measure_sqrt_timeILy3EEvv+0xb4c>
 b4c:	48 8b 03             	mov    (%rbx),%rax
 b4f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b56 <_Z17measure_sqrt_timeILy3EEvv+0xb56>
 b56:	ba 0a 00 00 00       	mov    $0xa,%edx
 b5b:	48 8b 40 30          	mov    0x30(%rax),%rax
 b5f:	48 39 c8             	cmp    %rcx,%rax
          roots[i + k] = sqrt(floats[i + k]);
 b62:	0f 84 27 fd ff ff    	je     88f <_Z17measure_sqrt_timeILy3EEvv+0x88f>
 b68:	48 89 d9             	mov    %rbx,%rcx
 b6b:	ff d0                	callq  *%rax
 b6d:	0f be d0             	movsbl %al,%edx
 b70:	e9 1a fd ff ff       	jmpq   88f <_Z17measure_sqrt_timeILy3EEvv+0x88f>
 b75:	48 89 d9             	mov    %rbx,%rcx
 b78:	e8 00 00 00 00       	callq  b7d <_Z17measure_sqrt_timeILy3EEvv+0xb7d>
 b7d:	48 8b 03             	mov    (%rbx),%rax
	this->_M_widen_init();
 b80:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b87 <_Z17measure_sqrt_timeILy3EEvv+0xb87>
	return this->do_widen(__c);
 b87:	ba 0a 00 00 00       	mov    $0xa,%edx
 b8c:	48 8b 40 30          	mov    0x30(%rax),%rax
 b90:	48 39 c8             	cmp    %rcx,%rax
 b93:	0f 84 a2 f8 ff ff    	je     43b <_Z17measure_sqrt_timeILy3EEvv+0x43b>
 b99:	48 89 d9             	mov    %rbx,%rcx
 b9c:	ff d0                	callq  *%rax
 b9e:	0f be d0             	movsbl %al,%edx
 ba1:	e9 95 f8 ff ff       	jmpq   43b <_Z17measure_sqrt_timeILy3EEvv+0x43b>
 ba6:	48 89 f1             	mov    %rsi,%rcx
 ba9:	e8 00 00 00 00       	callq  bae <_Z17measure_sqrt_timeILy3EEvv+0xbae>
 bae:	48 8b 06             	mov    (%rsi),%rax
	this->_M_widen_init();
 bb1:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # bb8 <_Z17measure_sqrt_timeILy3EEvv+0xbb8>
	return this->do_widen(__c);
 bb8:	ba 0a 00 00 00       	mov    $0xa,%edx
 bbd:	48 8b 40 30          	mov    0x30(%rax),%rax
 bc1:	48 39 c8             	cmp    %rcx,%rax
 bc4:	0f 84 92 fa ff ff    	je     65c <_Z17measure_sqrt_timeILy3EEvv+0x65c>
 bca:	48 89 f1             	mov    %rsi,%rcx
 bcd:	ff d0                	callq  *%rax
 bcf:	0f be d0             	movsbl %al,%edx
 bd2:	e9 85 fa ff ff       	jmpq   65c <_Z17measure_sqrt_timeILy3EEvv+0x65c>
 bd7:	48 89 d9             	mov    %rbx,%rcx
 bda:	e8 00 00 00 00       	callq  bdf <_Z17measure_sqrt_timeILy3EEvv+0xbdf>
 bdf:	48 8b 03             	mov    (%rbx),%rax
      { return __c; }
 be2:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # be9 <_Z17measure_sqrt_timeILy3EEvv+0xbe9>
	return this->do_widen(__c);
 be9:	ba 0a 00 00 00       	mov    $0xa,%edx
 bee:	48 8b 40 30          	mov    0x30(%rax),%rax
 bf2:	48 39 c8             	cmp    %rcx,%rax
 bf5:	0f 84 fb f6 ff ff    	je     2f6 <_Z17measure_sqrt_timeILy3EEvv+0x2f6>
 bfb:	48 89 d9             	mov    %rbx,%rcx
 bfe:	ff d0                	callq  *%rax
 c00:	0f be d0             	movsbl %al,%edx
 c03:	e9 ee f6 ff ff       	jmpq   2f6 <_Z17measure_sqrt_timeILy3EEvv+0x2f6>
 c08:	48 89 d9             	mov    %rbx,%rcx
 c0b:	e8 00 00 00 00       	callq  c10 <_Z17measure_sqrt_timeILy3EEvv+0xc10>
 c10:	48 8b 03             	mov    (%rbx),%rax
	this->_M_widen_init();
 c13:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c1a <_Z17measure_sqrt_timeILy3EEvv+0xc1a>
	return this->do_widen(__c);
 c1a:	ba 0a 00 00 00       	mov    $0xa,%edx
 c1f:	48 8b 40 30          	mov    0x30(%rax),%rax
 c23:	48 39 c8             	cmp    %rcx,%rax
 c26:	0f 84 97 fd ff ff    	je     9c3 <_Z17measure_sqrt_timeILy3EEvv+0x9c3>
 c2c:	48 89 d9             	mov    %rbx,%rcx
 c2f:	ff d0                	callq  *%rax
 c31:	0f be d0             	movsbl %al,%edx
 c34:	e9 8a fd ff ff       	jmpq   9c3 <_Z17measure_sqrt_timeILy3EEvv+0x9c3>
 c39:	48 89 f1             	mov    %rsi,%rcx
 c3c:	e8 00 00 00 00       	callq  c41 <_Z17measure_sqrt_timeILy3EEvv+0xc41>
 c41:	48 8b 06             	mov    (%rsi),%rax
	this->_M_widen_init();
 c44:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c4b <_Z17measure_sqrt_timeILy3EEvv+0xc4b>
	return this->do_widen(__c);
 c4b:	ba 0a 00 00 00       	mov    $0xa,%edx
 c50:	48 8b 40 30          	mov    0x30(%rax),%rax
 c54:	48 39 c8             	cmp    %rcx,%rax
 c57:	0f 84 ed fc ff ff    	je     94a <_Z17measure_sqrt_timeILy3EEvv+0x94a>
 c5d:	48 89 f1             	mov    %rsi,%rcx
 c60:	ff d0                	callq  *%rax
 c62:	0f be d0             	movsbl %al,%edx
 c65:	e9 e0 fc ff ff       	jmpq   94a <_Z17measure_sqrt_timeILy3EEvv+0x94a>
 c6a:	90                   	nop
 c6b:	90                   	nop
 c6c:	90                   	nop
 c6d:	90                   	nop
 c6e:	90                   	nop
 c6f:	90                   	nop

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
   c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
{
  13:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  1a:	00 
  1b:	c5 f8 29 75 d0       	vmovaps %xmm6,-0x30(%rbp)
  static std::random_device device;
  20:	c5 f8 29 7d e0       	vmovaps %xmm7,-0x20(%rbp)
  25:	c5 78 29 45 f0       	vmovaps %xmm8,-0x10(%rbp)
  2a:	c5 78 29 4d 00       	vmovaps %xmm9,0x0(%rbp)
  2f:	c5 78 29 55 10       	vmovaps %xmm10,0x10(%rbp)
  34:	b8 80 6a 18 00       	mov    $0x186a80,%eax
  39:	e8 00 00 00 00       	callq  3e <_Z17measure_sqrt_timeILy4EEvv+0x3e>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  3e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 45 <_Z17measure_sqrt_timeILy4EEvv+0x45>
  45:	ba 04 00 00 00       	mov    $0x4,%edx
      return this->_M_getval_pretr1();
  4a:	48 29 c4             	sub    %rax,%rsp
  4d:	e8 00 00 00 00       	callq  52 <_Z17measure_sqrt_timeILy4EEvv+0x52>
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  52:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  58:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 5f <_Z17measure_sqrt_timeILy4EEvv+0x5f>
  5f:	48 8d bc 24 9f 00 00 	lea    0x9f(%rsp),%rdi
  66:	00 
  67:	48 89 c6             	mov    %rax,%rsi
  6a:	48 89 c1             	mov    %rax,%rcx
  6d:	48 83 e7 80          	and    $0xffffffffffffff80,%rdi
  71:	e8 00 00 00 00       	callq  76 <_Z17measure_sqrt_timeILy4EEvv+0x76>
  76:	48 8b 06             	mov    (%rsi),%rax
  79:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  7d:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  84:	00 
      __ret = __sum / __tmp;
  85:	48 85 db             	test   %rbx,%rbx
  88:	0f 84 e3 01 00 00    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
      if (__builtin_expect(__ret >= _RealType(1), 0))
  8e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  92:	0f 84 2f 0a 00 00    	je     ac7 <_Z17measure_sqrt_timeILy4EEvv+0xac7>
  98:	0f be 53 43          	movsbl 0x43(%rbx),%edx
  9c:	48 89 f1             	mov    %rsi,%rcx
  9f:	e8 00 00 00 00       	callq  a4 <_Z17measure_sqrt_timeILy4EEvv+0xa4>
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
  a4:	48 89 c1             	mov    %rax,%rcx
  a7:	e8 00 00 00 00       	callq  ac <_Z17measure_sqrt_timeILy4EEvv+0xac>
}
  ac:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # b3 <_Z17measure_sqrt_timeILy4EEvv+0xb3>
  b3:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  b9:	48 8d 15 0c 00 00 00 	lea    0xc(%rip),%rdx        # cc <_Z17measure_sqrt_timeILy4EEvv+0xcc>
  c0:	e8 00 00 00 00       	callq  c5 <_Z17measure_sqrt_timeILy4EEvv+0xc5>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  c5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cc <_Z17measure_sqrt_timeILy4EEvv+0xcc>
  cc:	ba 40 0d 03 00       	mov    $0x30d40,%edx
  d1:	e8 00 00 00 00       	callq  d6 <_Z17measure_sqrt_timeILy4EEvv+0xd6>
	: _M_a(__a), _M_b(__b)
  d6:	41 b8 11 00 00 00    	mov    $0x11,%r8d
  dc:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # fb <_Z17measure_sqrt_timeILy4EEvv+0xfb>
  e3:	48 89 c6             	mov    %rax,%rsi
  e6:	48 89 c1             	mov    %rax,%rcx
  e9:	e8 00 00 00 00       	callq  ee <_Z17measure_sqrt_timeILy4EEvv+0xee>
  ee:	48 8b 06             	mov    (%rsi),%rax
  f1:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  f5:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  fc:	00 
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
  fd:	48 85 db             	test   %rbx,%rbx
 100:	0f 84 6b 01 00 00    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
    { _M_init_pretr1(__token); }
 106:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      { _M_string_length = __length; }
 10a:	0f 84 86 09 00 00    	je     a96 <_Z17measure_sqrt_timeILy4EEvv+0xa96>
 110:	0f be 53 43          	movsbl 0x43(%rbx),%edx
	: allocator_type(__a), _M_p(__dat) { }
 114:	48 89 f1             	mov    %rsi,%rcx
 117:	4c 8d af 00 35 0c 00 	lea    0xc3500(%rdi),%r13
 11e:	48 8d 9f 00 6a 18 00 	lea    0x186a00(%rdi),%rbx
 125:	e8 00 00 00 00       	callq  12a <_Z17measure_sqrt_timeILy4EEvv+0x12a>
      { __c1 = __c2; }
 12a:	4d 89 ee             	mov    %r13,%r14
 12d:	48 89 c1             	mov    %rax,%rcx
 130:	e8 00 00 00 00       	callq  135 <_Z17measure_sqrt_timeILy4EEvv+0x135>
  static std::random_device device;
 135:	e8 10 00 00 00       	callq  14a <_Z17measure_sqrt_timeILy4EEvv+0x14a>
	if (!_M_is_local())
 13a:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
 13e:	49 83 c6 04          	add    $0x4,%r14
 142:	c5 d3 5a e8          	vcvtsd2ss %xmm0,%xmm5,%xmm5
 146:	c4 c1 7a 11 6e fc    	vmovss %xmm5,-0x4(%r14)
 14c:	49 39 de             	cmp    %rbx,%r14
 14f:	75 e4                	jne    135 <_Z17measure_sqrt_timeILy4EEvv+0x135>
 151:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 158 <_Z17measure_sqrt_timeILy4EEvv+0x158>
 158:	41 b8 09 00 00 00    	mov    $0x9,%r8d
 15e:	48 8d 15 2a 00 00 00 	lea    0x2a(%rip),%rdx        # 18f <_Z17measure_sqrt_timeILy4EEvv+0x18f>
	  __ret = std::nextafter(_RealType(1), _RealType(0));
 165:	e8 00 00 00 00       	callq  16a <_Z17measure_sqrt_timeILy4EEvv+0x16a>
 16a:	4c 8b 25 00 00 00 00 	mov    0x0(%rip),%r12        # 171 <_Z17measure_sqrt_timeILy4EEvv+0x171>
 171:	49 8b 04 24          	mov    (%r12),%rax
 175:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 179:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 180:	00 
 181:	48 85 db             	test   %rbx,%rbx
 184:	0f 84 e7 00 00 00    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
 18a:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 18e:	0f 84 64 09 00 00    	je     af8 <_Z17measure_sqrt_timeILy4EEvv+0xaf8>
 194:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 198:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19f <_Z17measure_sqrt_timeILy4EEvv+0x19f>
 19f:	e8 00 00 00 00       	callq  1a4 <_Z17measure_sqrt_timeILy4EEvv+0x1a4>
 1a4:	48 89 c1             	mov    %rax,%rcx
 1a7:	e8 00 00 00 00       	callq  1ac <_Z17measure_sqrt_timeILy4EEvv+0x1ac>
 1ac:	e8 00 00 00 00       	callq  1b1 <_Z17measure_sqrt_timeILy4EEvv+0x1b1>
 1b1:	c7 45 ac e8 03 00 00 	movl   $0x3e8,-0x54(%rbp)
 1b8:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
 1bc:	49 89 c7             	mov    %rax,%r15
 1bf:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 1c3:	48 89 fe             	mov    %rdi,%rsi
 1c6:	4c 89 eb             	mov    %r13,%rbx
 1c9:	e9 83 00 00 00       	jmpq   251 <_Z17measure_sqrt_timeILy4EEvv+0x251>
 1ce:	66 90                	xchg   %ax,%ax
 1d0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1d4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1d8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
 1dd:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
void measure_sqrt_time(void) { // --> Segmentation error occurs here according to gdb https://stackoverflow.com/questions/3718998/fixing-segmentation-faults-in-c
 1e1:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 1e5:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 1e9:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
 1ed:	0f 87 99 08 00 00    	ja     a8c <_Z17measure_sqrt_timeILy4EEvv+0xa8c>
 1f3:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1f7:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1fb:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
 200:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
 204:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 208:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 20c:	c5 fa 11 5e 04       	vmovss %xmm3,0x4(%rsi)
 211:	0f 87 6b 08 00 00    	ja     a82 <_Z17measure_sqrt_timeILy4EEvv+0xa82>
 217:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 21b:	c5 c3 5a ff          	vcvtsd2ss %xmm7,%xmm7,%xmm7
      { return _M_insert(__n); }
 21f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
 224:	c5 fa 11 7e 08       	vmovss %xmm7,0x8(%rsi)
 229:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 22d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 231:	0f 87 41 08 00 00    	ja     a78 <_Z17measure_sqrt_timeILy4EEvv+0xa78>
	__ostream_insert(__out, __s,
 237:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 23b:	48 83 c3 10          	add    $0x10,%rbx
 23f:	48 83 c6 10          	add    $0x10,%rsi
 243:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
      { return _M_insert(__n); }
 247:	c5 fa 11 5e fc       	vmovss %xmm3,-0x4(%rsi)
	__ostream_insert(__out, __s,
 24c:	4c 39 f3             	cmp    %r14,%rbx
 24f:	74 25                	je     276 <_Z17measure_sqrt_timeILy4EEvv+0x276>
 251:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 255:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
      { return __check_facet(_M_ctype).widen(__c); }
 259:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 25d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 261:	0f 86 69 ff ff ff    	jbe    1d0 <_Z17measure_sqrt_timeILy4EEvv+0x1d0>
      if (!__f)
 267:	e8 00 00 00 00       	callq  26c <_Z17measure_sqrt_timeILy4EEvv+0x26c>
 26c:	e9 5f ff ff ff       	jmpq   1d0 <_Z17measure_sqrt_timeILy4EEvv+0x1d0>
	if (_M_widen_ok)
 271:	e8 00 00 00 00       	callq  276 <_Z17measure_sqrt_timeILy4EEvv+0x276>
 276:	ff 4d ac             	decl   -0x54(%rbp)
 279:	0f 85 44 ff ff ff    	jne    1c3 <_Z17measure_sqrt_timeILy4EEvv+0x1c3>
    { return flush(__os.put(__os.widen('\n'))); }
 27f:	e8 00 00 00 00       	callq  284 <_Z17measure_sqrt_timeILy4EEvv+0x284>
    { return __os.flush(); }
 284:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 28b:	9b c4 20 
	__ostream_insert(__out, __s,
 28e:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 292:	4c 29 f8             	sub    %r15,%rax
 295:	48 89 c1             	mov    %rax,%rcx
 298:	48 f7 ea             	imul   %rdx
 29b:	48 c1 f9 3f          	sar    $0x3f,%rcx
 29f:	48 c1 fa 07          	sar    $0x7,%rdx
 2a3:	48 29 ca             	sub    %rcx,%rdx
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
 2a6:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2ad <_Z17measure_sqrt_timeILy4EEvv+0x2ad>
 2ad:	e8 00 00 00 00       	callq  2b2 <_Z17measure_sqrt_timeILy4EEvv+0x2b2>
 2b2:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 2b8:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 2f3 <_Z17measure_sqrt_timeILy4EEvv+0x2f3>
 2bf:	48 89 c6             	mov    %rax,%rsi
 2c2:	48 89 c1             	mov    %rax,%rcx
 2c5:	e8 00 00 00 00       	callq  2ca <_Z17measure_sqrt_timeILy4EEvv+0x2ca>
 2ca:	48 8b 06             	mov    (%rsi),%rax
 2cd:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
 2d1:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 2d8:	00 
 2d9:	48 85 db             	test   %rbx,%rbx
 2dc:	74 93                	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
      if (!__f)
 2de:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 2e2:	0f 84 67 09 00 00    	je     c4f <_Z17measure_sqrt_timeILy4EEvv+0xc4f>
 2e8:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 2ec:	48 89 f1             	mov    %rsi,%rcx
 2ef:	e8 00 00 00 00       	callq  2f4 <_Z17measure_sqrt_timeILy4EEvv+0x2f4>
    { return flush(__os.put(__os.widen('\n'))); }
 2f4:	48 89 c1             	mov    %rax,%rcx
 2f7:	e8 00 00 00 00       	callq  2fc <_Z17measure_sqrt_timeILy4EEvv+0x2fc>
 2fc:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 303 <_Z17measure_sqrt_timeILy4EEvv+0x303>
 303:	41 b8 37 00 00 00    	mov    $0x37,%r8d
 309:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 350 <_Z17measure_sqrt_timeILy4EEvv+0x350>
    { return __os.flush(); }
 310:	e8 00 00 00 00       	callq  315 <_Z17measure_sqrt_timeILy4EEvv+0x315>
       floats[i] = random_double();
 315:	49 8b 04 24          	mov    (%r12),%rax
 319:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 31d:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 324:	00 
 325:	48 85 db             	test   %rbx,%rbx
 328:	0f 84 43 ff ff ff    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
    for (int i = 0; i < 4 * N; i++) {
 32e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
	__ostream_insert(__out, __s,
 332:	0f 84 f1 07 00 00    	je     b29 <_Z17measure_sqrt_timeILy4EEvv+0xb29>
 338:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 33c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 343 <_Z17measure_sqrt_timeILy4EEvv+0x343>
 343:	e8 00 00 00 00       	callq  348 <_Z17measure_sqrt_timeILy4EEvv+0x348>
 348:	48 89 c1             	mov    %rax,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
 34b:	e8 00 00 00 00       	callq  350 <_Z17measure_sqrt_timeILy4EEvv+0x350>
 350:	e8 00 00 00 00       	callq  355 <_Z17measure_sqrt_timeILy4EEvv+0x355>
      { return __check_facet(_M_ctype).widen(__c); }
 355:	ba e8 03 00 00       	mov    $0x3e8,%edx
 35a:	c5 f8 28 3d 50 01 00 	vmovaps 0x150(%rip),%xmm7        # 4b2 <_Z17measure_sqrt_timeILy4EEvv+0x4b2>
 361:	00 
      if (!__f)
 362:	c5 f8 28 35 60 01 00 	vmovaps 0x160(%rip),%xmm6        # 4ca <_Z17measure_sqrt_timeILy4EEvv+0x4ca>
 369:	00 
 36a:	48 89 c3             	mov    %rax,%rbx
 36d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 371:	31 c0                	xor    %eax,%eax
 373:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
 37a:	48 83 c0 10          	add    $0x10,%rax
 37e:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
    { return __os.flush(); }
 383:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
 387:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
       start = steady_clock::now();
 38b:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 38f:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 393:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 397:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 39b:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 39f:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 3a3:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 3a7:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 3ab:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
 3af:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
          roots[i + k] = sqrt(floats[i + k]);
 3b3:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 3b7:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
 3bd:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
 3c3:	75 ae                	jne    373 <_Z17measure_sqrt_timeILy4EEvv+0x373>
 3c5:	ff ca                	dec    %edx
 3c7:	75 a8                	jne    371 <_Z17measure_sqrt_timeILy4EEvv+0x371>
 3c9:	e8 00 00 00 00       	callq  3ce <_Z17measure_sqrt_timeILy4EEvv+0x3ce>
 3ce:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 3d5:	9b c4 20 
 3d8:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 3dc:	48 29 d8             	sub    %rbx,%rax
 3df:	48 89 c1             	mov    %rax,%rcx
 3e2:	48 f7 ea             	imul   %rdx
 3e5:	48 c1 f9 3f          	sar    $0x3f,%rcx
 3e9:	48 c1 fa 07          	sar    $0x7,%rdx
 3ed:	48 29 ca             	sub    %rcx,%rdx
 3f0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 3f7 <_Z17measure_sqrt_timeILy4EEvv+0x3f7>
 3f7:	e8 00 00 00 00       	callq  3fc <_Z17measure_sqrt_timeILy4EEvv+0x3fc>
 3fc:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 402:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 43d <_Z17measure_sqrt_timeILy4EEvv+0x43d>
 409:	48 89 c6             	mov    %rax,%rsi
 40c:	48 89 c1             	mov    %rax,%rcx
 40f:	e8 00 00 00 00       	callq  414 <_Z17measure_sqrt_timeILy4EEvv+0x414>
 414:	48 8b 06             	mov    (%rsi),%rax
 417:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 41b:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 422:	00 
 423:	48 85 db             	test   %rbx,%rbx
 426:	0f 84 45 fe ff ff    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
 42c:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      for (int i = 0; i < 4 * N; i += 4) {
 430:	0f 84 b7 07 00 00    	je     bed <_Z17measure_sqrt_timeILy4EEvv+0xbed>
          roots[i + k] = sqrt(floats[i + k]);
 436:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 43a:	48 89 f1             	mov    %rsi,%rcx
 43d:	e8 00 00 00 00       	callq  442 <_Z17measure_sqrt_timeILy4EEvv+0x442>
 442:	48 89 c1             	mov    %rax,%rcx
 445:	e8 00 00 00 00       	callq  44a <_Z17measure_sqrt_timeILy4EEvv+0x44a>
 44a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 451 <_Z17measure_sqrt_timeILy4EEvv+0x451>
 451:	41 b8 39 00 00 00    	mov    $0x39,%r8d
	__throw_bad_cast();
 457:	48 8d 15 78 00 00 00 	lea    0x78(%rip),%rdx        # 4d6 <_Z17measure_sqrt_timeILy4EEvv+0x4d6>
 45e:	e8 00 00 00 00       	callq  463 <_Z17measure_sqrt_timeILy4EEvv+0x463>
    for (int j = 0; j < LOOP; j++) {
 463:	49 8b 04 24          	mov    (%r12),%rax
 467:	48 8b 40 e8          	mov    -0x18(%rax),%rax
       end = steady_clock::now();
 46b:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 472:	00 
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 473:	48 85 db             	test   %rbx,%rbx
 476:	0f 84 f5 fd ff ff    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
 47c:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 480:	0f 84 d4 06 00 00    	je     b5a <_Z17measure_sqrt_timeILy4EEvv+0xb5a>
 486:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 48a:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 491 <_Z17measure_sqrt_timeILy4EEvv+0x491>
      { return _M_insert(__n); }
 491:	e8 00 00 00 00       	callq  496 <_Z17measure_sqrt_timeILy4EEvv+0x496>
 496:	48 89 c1             	mov    %rax,%rcx
 499:	e8 00 00 00 00       	callq  49e <_Z17measure_sqrt_timeILy4EEvv+0x49e>
	__ostream_insert(__out, __s,
 49e:	e8 00 00 00 00       	callq  4a3 <_Z17measure_sqrt_timeILy4EEvv+0x4a3>
 4a3:	ba e8 03 00 00       	mov    $0x3e8,%edx
 4a8:	48 89 c6             	mov    %rax,%rsi
      { return _M_insert(__n); }
 4ab:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
	__ostream_insert(__out, __s,
 4af:	4c 89 e8             	mov    %r13,%rax
 4b2:	48 89 fb             	mov    %rdi,%rbx
    { return flush(__os.put(__os.widen('\n'))); }
 4b5:	c5 f8 28 20          	vmovaps (%rax),%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 4b9:	c5 f8 28 40 20       	vmovaps 0x20(%rax),%xmm0
 4be:	48 83 c3 40          	add    $0x40,%rbx
 4c2:	48 83 c0 40          	add    $0x40,%rax
      if (!__f)
 4c6:	c5 d8 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm2
 4cc:	c5 f8 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm1
 4d2:	c5 d8 c6 60 d0 dd    	vshufps $0xdd,-0x30(%rax),%xmm4,%xmm4
 4d8:	c5 f8 c6 40 f0 dd    	vshufps $0xdd,-0x10(%rax),%xmm0,%xmm0
    { return __os.flush(); }
 4de:	c5 e8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm2,%xmm3
 4e3:	c5 e8 c6 c9 dd       	vshufps $0xdd,%xmm1,%xmm2,%xmm1
	__ostream_insert(__out, __s,
 4e8:	c5 d8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm2
 4ed:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
 4f2:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
 4f7:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 4fb:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
 4ff:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 503:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 507:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 50b:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
      if (!__f)
 50f:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 513:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 517:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 51b:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 51f:	c5 e0 5e dc          	vdivps %xmm4,%xmm3,%xmm3
 523:	c5 e0 58 dc          	vaddps %xmm4,%xmm3,%xmm3
 527:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
 52c:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 530:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
    { return __os.flush(); }
 534:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
 538:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
       start = steady_clock::now();
 53c:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 540:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 544:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 548:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 54c:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 550:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 554:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 558:	c5 e8 5e d4          	vdivps %xmm4,%xmm2,%xmm2
 55c:	c5 e8 58 d4          	vaddps %xmm4,%xmm2,%xmm2
 560:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 565:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 569:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 56d:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 571:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
    root = 0.5 * (root + (* a / root));
 575:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 579:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 57d:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 581:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 585:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 589:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
        roots[i] = sqrt1<LOOPS>(floats + i);
 58d:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 591:	c5 f0 5e cc          	vdivps %xmm4,%xmm1,%xmm1
 595:	c5 f0 58 cc          	vaddps %xmm4,%xmm1,%xmm1
 599:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
    for (int j = 0; j < LOOP; j++) {
 59e:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
       end = steady_clock::now();
 5a2:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 5a6:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 5aa:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5ae:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 5b2:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 5b6:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5ba:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 5be:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 5c2:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5c6:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
      { return _M_insert(__n); }
 5ca:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
 5ce:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
 5d2:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
	__ostream_insert(__out, __s,
 5d6:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
 5da:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 5de:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
      { return _M_insert(__n); }
 5e2:	c5 e8 15 d0          	vunpckhps %xmm0,%xmm2,%xmm2
	__ostream_insert(__out, __s,
 5e6:	c5 d8 14 c3          	vunpcklps %xmm3,%xmm4,%xmm0
 5ea:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 5ee:	c5 f8 29 43 c0       	vmovaps %xmm0,-0x40(%rbx)
 5f3:	c5 f0 14 c2          	vunpcklps %xmm2,%xmm1,%xmm0
 5f7:	c5 f0 15 ca          	vunpckhps %xmm2,%xmm1,%xmm1
      if (!__f)
 5fb:	c5 f8 29 63 d0       	vmovaps %xmm4,-0x30(%rbx)
 600:	c5 f8 29 43 e0       	vmovaps %xmm0,-0x20(%rbx)
 605:	c5 f8 29 4b f0       	vmovaps %xmm1,-0x10(%rbx)
 60a:	49 39 dd             	cmp    %rbx,%r13
 60d:	0f 85 a2 fe ff ff    	jne    4b5 <_Z17measure_sqrt_timeILy4EEvv+0x4b5>
    { return flush(__os.put(__os.widen('\n'))); }
 613:	ff ca                	dec    %edx
 615:	0f 85 94 fe ff ff    	jne    4af <_Z17measure_sqrt_timeILy4EEvv+0x4af>
    { return __os.flush(); }
 61b:	e8 00 00 00 00       	callq  620 <_Z17measure_sqrt_timeILy4EEvv+0x620>
 620:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 627:	9b c4 20 
	__ostream_insert(__out, __s,
 62a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 62e:	48 29 f0             	sub    %rsi,%rax
 631:	48 89 c1             	mov    %rax,%rcx
 634:	48 f7 ea             	imul   %rdx
 637:	48 c1 f9 3f          	sar    $0x3f,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
 63b:	48 c1 fa 07          	sar    $0x7,%rdx
      { return __check_facet(_M_ctype).widen(__c); }
 63f:	48 29 ca             	sub    %rcx,%rdx
 642:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 649 <_Z17measure_sqrt_timeILy4EEvv+0x649>
      if (!__f)
 649:	e8 00 00 00 00       	callq  64e <_Z17measure_sqrt_timeILy4EEvv+0x64e>
 64e:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 654:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 68f <_Z17measure_sqrt_timeILy4EEvv+0x68f>
 65b:	49 89 c6             	mov    %rax,%r14
 65e:	48 89 c1             	mov    %rax,%rcx
 661:	e8 00 00 00 00       	callq  666 <_Z17measure_sqrt_timeILy4EEvv+0x666>
 666:	49 8b 06             	mov    (%r14),%rax
 669:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    { return __os.flush(); }
 66d:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
 674:	00 
       start = steady_clock::now();
 675:	48 85 f6             	test   %rsi,%rsi
 678:	0f 84 f3 fb ff ff    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
 67e:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 682:	0f 84 96 05 00 00    	je     c1e <_Z17measure_sqrt_timeILy4EEvv+0xc1e>
 688:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 68c:	4c 89 f1             	mov    %r14,%rcx
 68f:	e8 00 00 00 00       	callq  694 <_Z17measure_sqrt_timeILy4EEvv+0x694>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 694:	48 89 c1             	mov    %rax,%rcx
 697:	e8 00 00 00 00       	callq  69c <_Z17measure_sqrt_timeILy4EEvv+0x69c>
 69c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 6a3 <_Z17measure_sqrt_timeILy4EEvv+0x6a3>
 6a3:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
 6a9:	48 8d 15 b8 00 00 00 	lea    0xb8(%rip),%rdx        # 768 <_Z17measure_sqrt_timeILy4EEvv+0x768>
 6b0:	e8 00 00 00 00       	callq  6b5 <_Z17measure_sqrt_timeILy4EEvv+0x6b5>
 6b5:	49 8b 04 24          	mov    (%r12),%rax
 6b9:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 6bd:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
 6c4:	00 
 6c5:	48 85 f6             	test   %rsi,%rsi
 6c8:	0f 84 a3 fb ff ff    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
 6ce:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 6d2:	0f 84 b3 04 00 00    	je     b8b <_Z17measure_sqrt_timeILy4EEvv+0xb8b>
    root = 0.5 * (root + (* a / root));
 6d8:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 6dc:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 6e3 <_Z17measure_sqrt_timeILy4EEvv+0x6e3>
 6e3:	e8 00 00 00 00       	callq  6e8 <_Z17measure_sqrt_timeILy4EEvv+0x6e8>
 6e8:	48 89 c1             	mov    %rax,%rcx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 6eb:	e8 00 00 00 00       	callq  6f0 <_Z17measure_sqrt_timeILy4EEvv+0x6f0>
 6f0:	e8 00 00 00 00       	callq  6f5 <_Z17measure_sqrt_timeILy4EEvv+0x6f5>
    root = 0.5 * (root + (* a / root));
 6f5:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
 6fa:	48 89 c6             	mov    %rax,%rsi
 6fd:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 701:	4c 89 ea             	mov    %r13,%rdx
 704:	48 89 f8             	mov    %rdi,%rax
 707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 70e:	00 00 
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 710:	c5 f8 28 22          	vmovaps (%rdx),%xmm4
    root = 0.5 * (root + (* a / root));
 714:	c5 f8 28 42 20       	vmovaps 0x20(%rdx),%xmm0
 719:	48 83 c0 40          	add    $0x40,%rax
 71d:	48 83 c2 40          	add    $0x40,%rdx
 721:	c5 f8 c6 4a f0 88    	vshufps $0x88,-0x10(%rdx),%xmm0,%xmm1
 727:	c5 d8 c6 5a d0 88    	vshufps $0x88,-0x30(%rdx),%xmm4,%xmm3
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 72d:	c5 f8 c6 42 f0 dd    	vshufps $0xdd,-0x10(%rdx),%xmm0,%xmm0
 733:	c5 d8 c6 62 d0 dd    	vshufps $0xdd,-0x30(%rdx),%xmm4,%xmm4
    root = 0.5 * (root + (* a / root));
 739:	c5 e0 c6 d1 88       	vshufps $0x88,%xmm1,%xmm3,%xmm2
 73e:	c5 e0 c6 d9 dd       	vshufps $0xdd,%xmm1,%xmm3,%xmm3
 743:	c5 d8 c6 c8 88       	vshufps $0x88,%xmm0,%xmm4,%xmm1
 748:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
 74d:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
 752:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 756:	c5 e8 5e ec          	vdivps %xmm4,%xmm2,%xmm5
 75a:	c5 d0 58 e4          	vaddps %xmm4,%xmm5,%xmm4
 75e:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 762:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
 767:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 76b:	c5 70 5e cc          	vdivps %xmm4,%xmm1,%xmm9
 76f:	c5 b0 58 e4          	vaddps %xmm4,%xmm9,%xmm4
 773:	c5 58 59 ce          	vmulps %xmm6,%xmm4,%xmm9
 777:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
 77c:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 780:	c5 60 5e c4          	vdivps %xmm4,%xmm3,%xmm8
 784:	c5 b8 58 e4          	vaddps %xmm4,%xmm8,%xmm4
 788:	c5 58 59 c6          	vmulps %xmm6,%xmm4,%xmm8
 78c:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
    for (int j = 0; j < LOOP; j++) {
 791:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 795:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
       end = steady_clock::now();
 799:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 79d:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
 7a1:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 7a5:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
 7a9:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
 7ae:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
 7b2:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 7b7:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
 7bc:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
      { return _M_insert(__n); }
 7c0:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 7c5:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
	__ostream_insert(__out, __s,
 7c9:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
 7cd:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 7d1:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
 7d5:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 7d9:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
 7dd:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
    { return flush(__os.put(__os.widen('\n'))); }
 7e2:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
      { return __check_facet(_M_ctype).widen(__c); }
 7e6:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 7eb:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
      if (!__f)
 7f0:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
 7f4:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 7f9:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
 7fd:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
 801:	c5 e8 5e d5          	vdivps %xmm5,%xmm2,%xmm2
 805:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 809:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 80d:	c5 e8 58 d5          	vaddps %xmm5,%xmm2,%xmm2
    { return __os.flush(); }
 811:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
 815:	c5 e8 59 ee          	vmulps %xmm6,%xmm2,%xmm5
	__ostream_insert(__out, __s,
 819:	c4 c1 70 5e d1       	vdivps %xmm9,%xmm1,%xmm2
 81e:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
 822:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 826:	c4 c1 60 5e c8       	vdivps %xmm8,%xmm3,%xmm1
 82b:	c4 c1 68 58 d1       	vaddps %xmm9,%xmm2,%xmm2
    { return flush(__os.put(__os.widen('\n'))); }
 830:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
      { return __check_facet(_M_ctype).widen(__c); }
 834:	c5 e8 14 e0          	vunpcklps %xmm0,%xmm2,%xmm4
 838:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
 83c:	c4 c1 70 58 c8       	vaddps %xmm8,%xmm1,%xmm1
      if (!__f)
 841:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 845:	c5 d0 14 d9          	vunpcklps %xmm1,%xmm5,%xmm3
 849:	c5 d0 15 c9          	vunpckhps %xmm1,%xmm5,%xmm1
 84d:	c5 e0 14 d4          	vunpcklps %xmm4,%xmm3,%xmm2
 851:	c5 e0 15 dc          	vunpckhps %xmm4,%xmm3,%xmm3
 855:	c5 f8 29 50 c0       	vmovaps %xmm2,-0x40(%rax)
 85a:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
 85e:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
    { return __os.flush(); }
 862:	c5 f8 29 58 d0       	vmovaps %xmm3,-0x30(%rax)
 867:	c5 f8 29 50 e0       	vmovaps %xmm2,-0x20(%rax)
       start = steady_clock::now();
 86c:	c5 f8 29 48 f0       	vmovaps %xmm1,-0x10(%rax)
 871:	48 39 d8             	cmp    %rbx,%rax
 874:	0f 85 96 fe ff ff    	jne    710 <_Z17measure_sqrt_timeILy4EEvv+0x710>
 87a:	ff c9                	dec    %ecx
 87c:	0f 85 7f fe ff ff    	jne    701 <_Z17measure_sqrt_timeILy4EEvv+0x701>
    initial[0] = (1 << 29) + (ai[0] >> 1) - (1 << 22) - 0x4C000;
 882:	e8 00 00 00 00       	callq  887 <_Z17measure_sqrt_timeILy4EEvv+0x887>
 887:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 88e:	9b c4 20 
 891:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 895:	48 29 f0             	sub    %rsi,%rax
 898:	48 89 c1             	mov    %rax,%rcx
 89b:	48 f7 ea             	imul   %rdx
 89e:	48 c1 f9 3f          	sar    $0x3f,%rcx
 8a2:	48 c1 fa 07          	sar    $0x7,%rdx
 8a6:	48 29 ca             	sub    %rcx,%rdx
 8a9:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 8b0 <_Z17measure_sqrt_timeILy4EEvv+0x8b0>
 8b0:	e8 00 00 00 00       	callq  8b5 <_Z17measure_sqrt_timeILy4EEvv+0x8b5>
 8b5:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 8bb:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 8f6 <_Z17measure_sqrt_timeILy4EEvv+0x8f6>
 8c2:	48 89 c6             	mov    %rax,%rsi
 8c5:	48 89 c1             	mov    %rax,%rcx
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8c8:	e8 00 00 00 00       	callq  8cd <_Z17measure_sqrt_timeILy4EEvv+0x8cd>
 8cd:	48 8b 06             	mov    (%rsi),%rax
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
 8d0:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 8d4:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 8db:	00 
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8dc:	48 85 db             	test   %rbx,%rbx
 8df:	0f 84 8c f9 ff ff    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
 8e5:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 8e9:	0f 84 cd 02 00 00    	je     bbc <_Z17measure_sqrt_timeILy4EEvv+0xbbc>
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8ef:	0f be 53 43          	movsbl 0x43(%rbx),%edx
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8f3:	48 89 f1             	mov    %rsi,%rcx
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 8f6:	e8 00 00 00 00       	callq  8fb <_Z17measure_sqrt_timeILy4EEvv+0x8fb>
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8fb:	48 89 c1             	mov    %rax,%rcx
 8fe:	e8 00 00 00 00       	callq  903 <_Z17measure_sqrt_timeILy4EEvv+0x903>
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 903:	e8 00 00 00 00       	callq  908 <_Z17measure_sqrt_timeILy4EEvv+0x908>
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
 908:	ba e8 03 00 00       	mov    $0x3e8,%edx
 90d:	48 89 c6             	mov    %rax,%rsi
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 910:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 914:	31 c0                	xor    %eax,%eax
 916:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 91d:	00 00 00 
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 920:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 927:	48 83 c0 10          	add    $0x10,%rax
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 92b:	c5 e9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm2
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 930:	c5 e9 fe cf          	vpaddd %xmm7,%xmm2,%xmm1
 934:	c5 f8 5e d1          	vdivps %xmm1,%xmm0,%xmm2
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 938:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
 93c:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 940:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 944:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 948:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 94c:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 950:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 954:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 958:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
 95c:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
 960:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 964:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
 96a:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
 970:	75 ae                	jne    920 <_Z17measure_sqrt_timeILy4EEvv+0x920>
 972:	ff ca                	dec    %edx
 974:	75 9e                	jne    914 <_Z17measure_sqrt_timeILy4EEvv+0x914>
 976:	e8 00 00 00 00       	callq  97b <_Z17measure_sqrt_timeILy4EEvv+0x97b>
 97b:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 982 <_Z17measure_sqrt_timeILy4EEvv+0x982>
 982:	41 b8 34 00 00 00    	mov    $0x34,%r8d
    for (int j = 0; j < LOOP; j++) {
 988:	48 8d 15 e8 00 00 00 	lea    0xe8(%rip),%rdx        # a77 <_Z17measure_sqrt_timeILy4EEvv+0xa77>
       end = steady_clock::now();
 98f:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 993:	48 29 f0             	sub    %rsi,%rax
 996:	48 89 c3             	mov    %rax,%rbx
 999:	e8 00 00 00 00       	callq  99e <_Z17measure_sqrt_timeILy4EEvv+0x99e>
 99e:	49 8b 04 24          	mov    (%r12),%rax
 9a2:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 9a6:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
 9ad:	00 
 9ae:	48 85 f6             	test   %rsi,%rsi
 9b1:	0f 84 ba f8 ff ff    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
      { return _M_insert(__n); }
 9b7:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 9bb:	0f 84 f0 02 00 00    	je     cb1 <_Z17measure_sqrt_timeILy4EEvv+0xcb1>
	__ostream_insert(__out, __s,
 9c1:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 9c5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 9cc <_Z17measure_sqrt_timeILy4EEvv+0x9cc>
      { return _M_insert(__n); }
 9cc:	e8 00 00 00 00       	callq  9d1 <_Z17measure_sqrt_timeILy4EEvv+0x9d1>
	__ostream_insert(__out, __s,
 9d1:	48 89 c1             	mov    %rax,%rcx
 9d4:	e8 00 00 00 00       	callq  9d9 <_Z17measure_sqrt_timeILy4EEvv+0x9d9>
      { return __check_facet(_M_ctype).widen(__c); }
 9d9:	48 89 d8             	mov    %rbx,%rax
 9dc:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 9e3:	9b c4 20 
      if (!__f)
 9e6:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 9ed <_Z17measure_sqrt_timeILy4EEvv+0x9ed>
 9ed:	48 c1 fb 3f          	sar    $0x3f,%rbx
 9f1:	48 f7 ea             	imul   %rdx
 9f4:	48 c1 fa 07          	sar    $0x7,%rdx
 9f8:	48 29 da             	sub    %rbx,%rdx
 9fb:	e8 00 00 00 00       	callq  a00 <_Z17measure_sqrt_timeILy4EEvv+0xa00>
    { return flush(__os.put(__os.widen('\n'))); }
 a00:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    { return __os.flush(); }
 a06:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # a41 <_Z17measure_sqrt_timeILy4EEvv+0xa41>
       start = steady_clock::now();
 a0d:	48 89 c6             	mov    %rax,%rsi
 a10:	48 89 c1             	mov    %rax,%rcx
 a13:	e8 00 00 00 00       	callq  a18 <_Z17measure_sqrt_timeILy4EEvv+0xa18>
 a18:	48 8b 06             	mov    (%rsi),%rax
 a1b:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 a1f:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 a26:	00 
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 a27:	48 85 db             	test   %rbx,%rbx
 a2a:	0f 84 41 f8 ff ff    	je     271 <_Z17measure_sqrt_timeILy4EEvv+0x271>
 a30:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    * root = 0.5 * (* root + (* a / * root));
 a34:	0f 84 46 02 00 00    	je     c80 <_Z17measure_sqrt_timeILy4EEvv+0xc80>
 a3a:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 a3e:	48 89 f1             	mov    %rsi,%rcx
 a41:	e8 00 00 00 00       	callq  a46 <_Z17measure_sqrt_timeILy4EEvv+0xa46>
 a46:	90                   	nop
 a47:	c5 f8 28 75 d0       	vmovaps -0x30(%rbp),%xmm6
 a4c:	c5 f8 28 7d e0       	vmovaps -0x20(%rbp),%xmm7
 a51:	c5 78 28 45 f0       	vmovaps -0x10(%rbp),%xmm8
      for (int i = 0; i < 4 * N; i += 4) {
 a56:	48 89 c1             	mov    %rax,%rcx
 a59:	c5 78 28 4d 00       	vmovaps 0x0(%rbp),%xmm9
       end = steady_clock::now();
 a5e:	c5 78 28 55 10       	vmovaps 0x10(%rbp),%xmm10
	__ostream_insert(__out, __s,
 a63:	48 8d 65 28          	lea    0x28(%rbp),%rsp
 a67:	5b                   	pop    %rbx
 a68:	5e                   	pop    %rsi
 a69:	5f                   	pop    %rdi
 a6a:	41 5c                	pop    %r12
 a6c:	41 5d                	pop    %r13
 a6e:	41 5e                	pop    %r14
 a70:	41 5f                	pop    %r15
 a72:	5d                   	pop    %rbp
 a73:	e9 00 00 00 00       	jmpq   a78 <_Z17measure_sqrt_timeILy4EEvv+0xa78>
 a78:	e8 00 00 00 00       	callq  a7d <_Z17measure_sqrt_timeILy4EEvv+0xa7d>
 a7d:	e9 b5 f7 ff ff       	jmpq   237 <_Z17measure_sqrt_timeILy4EEvv+0x237>
 a82:	e8 00 00 00 00       	callq  a87 <_Z17measure_sqrt_timeILy4EEvv+0xa87>
    { return flush(__os.put(__os.widen('\n'))); }
 a87:	e9 8b f7 ff ff       	jmpq   217 <_Z17measure_sqrt_timeILy4EEvv+0x217>
      { return __check_facet(_M_ctype).widen(__c); }
 a8c:	e8 00 00 00 00       	callq  a91 <_Z17measure_sqrt_timeILy4EEvv+0xa91>
 a91:	e9 5d f7 ff ff       	jmpq   1f3 <_Z17measure_sqrt_timeILy4EEvv+0x1f3>
      if (!__f)
 a96:	48 89 d9             	mov    %rbx,%rcx
 a99:	e8 00 00 00 00       	callq  a9e <_Z17measure_sqrt_timeILy4EEvv+0xa9e>
 a9e:	48 8b 03             	mov    (%rbx),%rax
 aa1:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # aa8 <_Z17measure_sqrt_timeILy4EEvv+0xaa8>
 aa8:	ba 0a 00 00 00       	mov    $0xa,%edx
 aad:	48 8b 40 30          	mov    0x30(%rax),%rax
 ab1:	48 39 c8             	cmp    %rcx,%rax
 ab4:	0f 84 5a f6 ff ff    	je     114 <_Z17measure_sqrt_timeILy4EEvv+0x114>
    { return __os.flush(); }
 aba:	48 89 d9             	mov    %rbx,%rcx
 abd:	ff d0                	callq  *%rax
 abf:	0f be d0             	movsbl %al,%edx
    std::cout << time.time_clock().count() / LOOP  << " [ns]" << std::endl;
 ac2:	e9 4d f6 ff ff       	jmpq   114 <_Z17measure_sqrt_timeILy4EEvv+0x114>
 ac7:	48 89 d9             	mov    %rbx,%rcx
 aca:	e8 00 00 00 00       	callq  acf <_Z17measure_sqrt_timeILy4EEvv+0xacf>
      { return _M_insert(__n); }
 acf:	48 8b 03             	mov    (%rbx),%rax
 ad2:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ad9 <_Z17measure_sqrt_timeILy4EEvv+0xad9>
 ad9:	ba 0a 00 00 00       	mov    $0xa,%edx
 ade:	48 8b 40 30          	mov    0x30(%rax),%rax
 ae2:	48 39 c8             	cmp    %rcx,%rax
 ae5:	0f 84 b1 f5 ff ff    	je     9c <_Z17measure_sqrt_timeILy4EEvv+0x9c>
	__ostream_insert(__out, __s,
 aeb:	48 89 d9             	mov    %rbx,%rcx
 aee:	ff d0                	callq  *%rax
 af0:	0f be d0             	movsbl %al,%edx
 af3:	e9 a4 f5 ff ff       	jmpq   9c <_Z17measure_sqrt_timeILy4EEvv+0x9c>
 af8:	48 89 d9             	mov    %rbx,%rcx
 afb:	e8 00 00 00 00       	callq  b00 <_Z17measure_sqrt_timeILy4EEvv+0xb00>
    { return flush(__os.put(__os.widen('\n'))); }
 b00:	48 8b 03             	mov    (%rbx),%rax
      { return __check_facet(_M_ctype).widen(__c); }
 b03:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b0a <_Z17measure_sqrt_timeILy4EEvv+0xb0a>
 b0a:	ba 0a 00 00 00       	mov    $0xa,%edx
      if (!__f)
 b0f:	48 8b 40 30          	mov    0x30(%rax),%rax
 b13:	48 39 c8             	cmp    %rcx,%rax
 b16:	0f 84 7c f6 ff ff    	je     198 <_Z17measure_sqrt_timeILy4EEvv+0x198>
 b1c:	48 89 d9             	mov    %rbx,%rcx
 b1f:	ff d0                	callq  *%rax
 b21:	0f be d0             	movsbl %al,%edx
 b24:	e9 6f f6 ff ff       	jmpq   198 <_Z17measure_sqrt_timeILy4EEvv+0x198>
 b29:	48 89 d9             	mov    %rbx,%rcx
 b2c:	e8 00 00 00 00       	callq  b31 <_Z17measure_sqrt_timeILy4EEvv+0xb31>
}
 b31:	48 8b 03             	mov    (%rbx),%rax
 b34:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b3b <_Z17measure_sqrt_timeILy4EEvv+0xb3b>
 b3b:	ba 0a 00 00 00       	mov    $0xa,%edx
 b40:	48 8b 40 30          	mov    0x30(%rax),%rax
 b44:	48 39 c8             	cmp    %rcx,%rax
 b47:	0f 84 ef f7 ff ff    	je     33c <_Z17measure_sqrt_timeILy4EEvv+0x33c>
 b4d:	48 89 d9             	mov    %rbx,%rcx
 b50:	ff d0                	callq  *%rax
 b52:	0f be d0             	movsbl %al,%edx
 b55:	e9 e2 f7 ff ff       	jmpq   33c <_Z17measure_sqrt_timeILy4EEvv+0x33c>
    { return __os.flush(); }
 b5a:	48 89 d9             	mov    %rbx,%rcx
 b5d:	e8 00 00 00 00       	callq  b62 <_Z17measure_sqrt_timeILy4EEvv+0xb62>
          roots[i + k] = sqrt(floats[i + k]);
 b62:	48 8b 03             	mov    (%rbx),%rax
 b65:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b6c <_Z17measure_sqrt_timeILy4EEvv+0xb6c>
 b6c:	ba 0a 00 00 00       	mov    $0xa,%edx
 b71:	48 8b 40 30          	mov    0x30(%rax),%rax
 b75:	48 39 c8             	cmp    %rcx,%rax
 b78:	0f 84 0c f9 ff ff    	je     48a <_Z17measure_sqrt_timeILy4EEvv+0x48a>
	this->_M_widen_init();
 b7e:	48 89 d9             	mov    %rbx,%rcx
 b81:	ff d0                	callq  *%rax
 b83:	0f be d0             	movsbl %al,%edx
	return this->do_widen(__c);
 b86:	e9 ff f8 ff ff       	jmpq   48a <_Z17measure_sqrt_timeILy4EEvv+0x48a>
 b8b:	48 89 f1             	mov    %rsi,%rcx
 b8e:	e8 00 00 00 00       	callq  b93 <_Z17measure_sqrt_timeILy4EEvv+0xb93>
 b93:	48 8b 06             	mov    (%rsi),%rax
 b96:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b9d <_Z17measure_sqrt_timeILy4EEvv+0xb9d>
 b9d:	ba 0a 00 00 00       	mov    $0xa,%edx
 ba2:	48 8b 40 30          	mov    0x30(%rax),%rax
 ba6:	48 39 c8             	cmp    %rcx,%rax
 ba9:	0f 84 2d fb ff ff    	je     6dc <_Z17measure_sqrt_timeILy4EEvv+0x6dc>
	this->_M_widen_init();
 baf:	48 89 f1             	mov    %rsi,%rcx
 bb2:	ff d0                	callq  *%rax
 bb4:	0f be d0             	movsbl %al,%edx
	return this->do_widen(__c);
 bb7:	e9 20 fb ff ff       	jmpq   6dc <_Z17measure_sqrt_timeILy4EEvv+0x6dc>
 bbc:	48 89 d9             	mov    %rbx,%rcx
 bbf:	e8 00 00 00 00       	callq  bc4 <_Z17measure_sqrt_timeILy4EEvv+0xbc4>
 bc4:	48 8b 03             	mov    (%rbx),%rax
 bc7:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # bce <_Z17measure_sqrt_timeILy4EEvv+0xbce>
 bce:	ba 0a 00 00 00       	mov    $0xa,%edx
 bd3:	48 8b 40 30          	mov    0x30(%rax),%rax
 bd7:	48 39 c8             	cmp    %rcx,%rax
 bda:	0f 84 13 fd ff ff    	je     8f3 <_Z17measure_sqrt_timeILy4EEvv+0x8f3>
      { return __c; }
 be0:	48 89 d9             	mov    %rbx,%rcx
	this->_M_widen_init();
 be3:	ff d0                	callq  *%rax
 be5:	0f be d0             	movsbl %al,%edx
	return this->do_widen(__c);
 be8:	e9 06 fd ff ff       	jmpq   8f3 <_Z17measure_sqrt_timeILy4EEvv+0x8f3>
 bed:	48 89 d9             	mov    %rbx,%rcx
 bf0:	e8 00 00 00 00       	callq  bf5 <_Z17measure_sqrt_timeILy4EEvv+0xbf5>
 bf5:	48 8b 03             	mov    (%rbx),%rax
 bf8:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # bff <_Z17measure_sqrt_timeILy4EEvv+0xbff>
 bff:	ba 0a 00 00 00       	mov    $0xa,%edx
 c04:	48 8b 40 30          	mov    0x30(%rax),%rax
 c08:	48 39 c8             	cmp    %rcx,%rax
 c0b:	0f 84 29 f8 ff ff    	je     43a <_Z17measure_sqrt_timeILy4EEvv+0x43a>
	this->_M_widen_init();
 c11:	48 89 d9             	mov    %rbx,%rcx
 c14:	ff d0                	callq  *%rax
 c16:	0f be d0             	movsbl %al,%edx
	return this->do_widen(__c);
 c19:	e9 1c f8 ff ff       	jmpq   43a <_Z17measure_sqrt_timeILy4EEvv+0x43a>
 c1e:	48 89 f1             	mov    %rsi,%rcx
 c21:	e8 00 00 00 00       	callq  c26 <_Z17measure_sqrt_timeILy4EEvv+0xc26>
 c26:	48 8b 06             	mov    (%rsi),%rax
 c29:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c30 <_Z17measure_sqrt_timeILy4EEvv+0xc30>
 c30:	ba 0a 00 00 00       	mov    $0xa,%edx
 c35:	48 8b 40 30          	mov    0x30(%rax),%rax
 c39:	48 39 c8             	cmp    %rcx,%rax
 c3c:	0f 84 4a fa ff ff    	je     68c <_Z17measure_sqrt_timeILy4EEvv+0x68c>
	this->_M_widen_init();
 c42:	48 89 f1             	mov    %rsi,%rcx
 c45:	ff d0                	callq  *%rax
 c47:	0f be d0             	movsbl %al,%edx
	return this->do_widen(__c);
 c4a:	e9 3d fa ff ff       	jmpq   68c <_Z17measure_sqrt_timeILy4EEvv+0x68c>
 c4f:	48 89 d9             	mov    %rbx,%rcx
 c52:	e8 00 00 00 00       	callq  c57 <_Z17measure_sqrt_timeILy4EEvv+0xc57>
 c57:	48 8b 03             	mov    (%rbx),%rax
 c5a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c61 <_Z17measure_sqrt_timeILy4EEvv+0xc61>
 c61:	ba 0a 00 00 00       	mov    $0xa,%edx
 c66:	48 8b 40 30          	mov    0x30(%rax),%rax
 c6a:	48 39 c8             	cmp    %rcx,%rax
 c6d:	0f 84 79 f6 ff ff    	je     2ec <_Z17measure_sqrt_timeILy4EEvv+0x2ec>
	this->_M_widen_init();
 c73:	48 89 d9             	mov    %rbx,%rcx
 c76:	ff d0                	callq  *%rax
 c78:	0f be d0             	movsbl %al,%edx
	return this->do_widen(__c);
 c7b:	e9 6c f6 ff ff       	jmpq   2ec <_Z17measure_sqrt_timeILy4EEvv+0x2ec>
 c80:	48 89 d9             	mov    %rbx,%rcx
 c83:	e8 00 00 00 00       	callq  c88 <_Z17measure_sqrt_timeILy4EEvv+0xc88>
 c88:	48 8b 03             	mov    (%rbx),%rax
 c8b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c92 <_Z17measure_sqrt_timeILy4EEvv+0xc92>
 c92:	ba 0a 00 00 00       	mov    $0xa,%edx
 c97:	48 8b 40 30          	mov    0x30(%rax),%rax
 c9b:	48 39 c8             	cmp    %rcx,%rax
 c9e:	0f 84 9a fd ff ff    	je     a3e <_Z17measure_sqrt_timeILy4EEvv+0xa3e>
	this->_M_widen_init();
 ca4:	48 89 d9             	mov    %rbx,%rcx
 ca7:	ff d0                	callq  *%rax
 ca9:	0f be d0             	movsbl %al,%edx
	return this->do_widen(__c);
 cac:	e9 8d fd ff ff       	jmpq   a3e <_Z17measure_sqrt_timeILy4EEvv+0xa3e>
 cb1:	48 89 f1             	mov    %rsi,%rcx
 cb4:	e8 00 00 00 00       	callq  cb9 <_Z17measure_sqrt_timeILy4EEvv+0xcb9>
 cb9:	48 8b 06             	mov    (%rsi),%rax
 cbc:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # cc3 <_Z17measure_sqrt_timeILy4EEvv+0xcc3>
 cc3:	ba 0a 00 00 00       	mov    $0xa,%edx
 cc8:	48 8b 40 30          	mov    0x30(%rax),%rax
 ccc:	48 39 c8             	cmp    %rcx,%rax
 ccf:	0f 84 f0 fc ff ff    	je     9c5 <_Z17measure_sqrt_timeILy4EEvv+0x9c5>
	this->_M_widen_init();
 cd5:	48 89 f1             	mov    %rsi,%rcx
 cd8:	ff d0                	callq  *%rax
 cda:	0f be d0             	movsbl %al,%edx
	return this->do_widen(__c);
 cdd:	e9 e3 fc ff ff       	jmpq   9c5 <_Z17measure_sqrt_timeILy4EEvv+0x9c5>
 ce2:	90                   	nop
 ce3:	90                   	nop
 ce4:	90                   	nop
 ce5:	90                   	nop
 ce6:	90                   	nop
 ce7:	90                   	nop
 ce8:	90                   	nop
 ce9:	90                   	nop
 cea:	90                   	nop
 ceb:	90                   	nop
 cec:	90                   	nop
 ced:	90                   	nop
 cee:	90                   	nop
 cef:	90                   	nop

Disassembly of section .text$_Z17measure_sqrt_timeILy5EEvv:

0000000000000000 <_Z17measure_sqrt_timeILy5EEvv>:
   0:	55                   	push   %rbp
   1:	41 57                	push   %r15
   3:	41 56                	push   %r14
   5:	41 55                	push   %r13
   7:	41 54                	push   %r12
   9:	57                   	push   %rdi
   a:	56                   	push   %rsi
   b:	53                   	push   %rbx
   c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
{
  13:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  1a:	00 
  1b:	c5 f8 29 75 d0       	vmovaps %xmm6,-0x30(%rbp)
  static std::random_device device;
  20:	c5 f8 29 7d e0       	vmovaps %xmm7,-0x20(%rbp)
  25:	c5 78 29 45 f0       	vmovaps %xmm8,-0x10(%rbp)
  2a:	c5 78 29 4d 00       	vmovaps %xmm9,0x0(%rbp)
  2f:	c5 78 29 55 10       	vmovaps %xmm10,0x10(%rbp)
  34:	b8 80 6a 18 00       	mov    $0x186a80,%eax
  39:	e8 00 00 00 00       	callq  3e <_Z17measure_sqrt_timeILy5EEvv+0x3e>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  3e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 45 <_Z17measure_sqrt_timeILy5EEvv+0x45>
  45:	ba 05 00 00 00       	mov    $0x5,%edx
      return this->_M_getval_pretr1();
  4a:	48 29 c4             	sub    %rax,%rsp
  4d:	e8 00 00 00 00       	callq  52 <_Z17measure_sqrt_timeILy5EEvv+0x52>
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  52:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  58:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 5f <_Z17measure_sqrt_timeILy5EEvv+0x5f>
  5f:	48 8d bc 24 9f 00 00 	lea    0x9f(%rsp),%rdi
  66:	00 
  67:	48 89 c6             	mov    %rax,%rsi
  6a:	48 89 c1             	mov    %rax,%rcx
  6d:	48 83 e7 80          	and    $0xffffffffffffff80,%rdi
  71:	e8 00 00 00 00       	callq  76 <_Z17measure_sqrt_timeILy5EEvv+0x76>
  76:	48 8b 06             	mov    (%rsi),%rax
  79:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  7d:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  84:	00 
      __ret = __sum / __tmp;
  85:	48 85 db             	test   %rbx,%rbx
  88:	0f 84 e3 01 00 00    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
      if (__builtin_expect(__ret >= _RealType(1), 0))
  8e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  92:	0f 84 9b 0a 00 00    	je     b33 <_Z17measure_sqrt_timeILy5EEvv+0xb33>
  98:	0f be 53 43          	movsbl 0x43(%rbx),%edx
  9c:	48 89 f1             	mov    %rsi,%rcx
  9f:	e8 00 00 00 00       	callq  a4 <_Z17measure_sqrt_timeILy5EEvv+0xa4>
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
  a4:	48 89 c1             	mov    %rax,%rcx
  a7:	e8 00 00 00 00       	callq  ac <_Z17measure_sqrt_timeILy5EEvv+0xac>
}
  ac:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # b3 <_Z17measure_sqrt_timeILy5EEvv+0xb3>
  b3:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  b9:	48 8d 15 0c 00 00 00 	lea    0xc(%rip),%rdx        # cc <_Z17measure_sqrt_timeILy5EEvv+0xcc>
  c0:	e8 00 00 00 00       	callq  c5 <_Z17measure_sqrt_timeILy5EEvv+0xc5>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  c5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cc <_Z17measure_sqrt_timeILy5EEvv+0xcc>
  cc:	ba 40 0d 03 00       	mov    $0x30d40,%edx
  d1:	e8 00 00 00 00       	callq  d6 <_Z17measure_sqrt_timeILy5EEvv+0xd6>
	: _M_a(__a), _M_b(__b)
  d6:	41 b8 11 00 00 00    	mov    $0x11,%r8d
  dc:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # fb <_Z17measure_sqrt_timeILy5EEvv+0xfb>
  e3:	48 89 c6             	mov    %rax,%rsi
  e6:	48 89 c1             	mov    %rax,%rcx
  e9:	e8 00 00 00 00       	callq  ee <_Z17measure_sqrt_timeILy5EEvv+0xee>
  ee:	48 8b 06             	mov    (%rsi),%rax
  f1:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  f5:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  fc:	00 
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
  fd:	48 85 db             	test   %rbx,%rbx
 100:	0f 84 6b 01 00 00    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
    { _M_init_pretr1(__token); }
 106:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      { _M_string_length = __length; }
 10a:	0f 84 f2 09 00 00    	je     b02 <_Z17measure_sqrt_timeILy5EEvv+0xb02>
 110:	0f be 53 43          	movsbl 0x43(%rbx),%edx
	: allocator_type(__a), _M_p(__dat) { }
 114:	48 89 f1             	mov    %rsi,%rcx
 117:	4c 8d af 00 35 0c 00 	lea    0xc3500(%rdi),%r13
 11e:	48 8d 9f 00 6a 18 00 	lea    0x186a00(%rdi),%rbx
 125:	e8 00 00 00 00       	callq  12a <_Z17measure_sqrt_timeILy5EEvv+0x12a>
      { __c1 = __c2; }
 12a:	4d 89 ee             	mov    %r13,%r14
 12d:	48 89 c1             	mov    %rax,%rcx
 130:	e8 00 00 00 00       	callq  135 <_Z17measure_sqrt_timeILy5EEvv+0x135>
  static std::random_device device;
 135:	e8 10 00 00 00       	callq  14a <_Z17measure_sqrt_timeILy5EEvv+0x14a>
	if (!_M_is_local())
 13a:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
 13e:	49 83 c6 04          	add    $0x4,%r14
 142:	c5 c3 5a f8          	vcvtsd2ss %xmm0,%xmm7,%xmm7
 146:	c4 c1 7a 11 7e fc    	vmovss %xmm7,-0x4(%r14)
 14c:	49 39 de             	cmp    %rbx,%r14
 14f:	75 e4                	jne    135 <_Z17measure_sqrt_timeILy5EEvv+0x135>
 151:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 158 <_Z17measure_sqrt_timeILy5EEvv+0x158>
 158:	41 b8 09 00 00 00    	mov    $0x9,%r8d
 15e:	48 8d 15 2a 00 00 00 	lea    0x2a(%rip),%rdx        # 18f <_Z17measure_sqrt_timeILy5EEvv+0x18f>
	  __ret = std::nextafter(_RealType(1), _RealType(0));
 165:	e8 00 00 00 00       	callq  16a <_Z17measure_sqrt_timeILy5EEvv+0x16a>
 16a:	4c 8b 25 00 00 00 00 	mov    0x0(%rip),%r12        # 171 <_Z17measure_sqrt_timeILy5EEvv+0x171>
 171:	49 8b 04 24          	mov    (%r12),%rax
 175:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 179:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 180:	00 
 181:	48 85 db             	test   %rbx,%rbx
 184:	0f 84 e7 00 00 00    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
 18a:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 18e:	0f 84 d0 09 00 00    	je     b64 <_Z17measure_sqrt_timeILy5EEvv+0xb64>
 194:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 198:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19f <_Z17measure_sqrt_timeILy5EEvv+0x19f>
 19f:	e8 00 00 00 00       	callq  1a4 <_Z17measure_sqrt_timeILy5EEvv+0x1a4>
 1a4:	48 89 c1             	mov    %rax,%rcx
 1a7:	e8 00 00 00 00       	callq  1ac <_Z17measure_sqrt_timeILy5EEvv+0x1ac>
 1ac:	e8 00 00 00 00       	callq  1b1 <_Z17measure_sqrt_timeILy5EEvv+0x1b1>
 1b1:	c7 45 ac e8 03 00 00 	movl   $0x3e8,-0x54(%rbp)
 1b8:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
 1bc:	49 89 c7             	mov    %rax,%r15
 1bf:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 1c3:	48 89 fe             	mov    %rdi,%rsi
 1c6:	4c 89 eb             	mov    %r13,%rbx
 1c9:	e9 83 00 00 00       	jmpq   251 <_Z17measure_sqrt_timeILy5EEvv+0x251>
 1ce:	66 90                	xchg   %ax,%ax
 1d0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1d4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1d8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
 1dd:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
void measure_sqrt_time(void) { // --> Segmentation error occurs here according to gdb https://stackoverflow.com/questions/3718998/fixing-segmentation-faults-in-c
 1e1:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 1e5:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 1e9:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
 1ed:	0f 87 05 09 00 00    	ja     af8 <_Z17measure_sqrt_timeILy5EEvv+0xaf8>
 1f3:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1f7:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1fb:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
 200:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
 204:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 208:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 20c:	c5 fa 11 5e 04       	vmovss %xmm3,0x4(%rsi)
 211:	0f 87 d7 08 00 00    	ja     aee <_Z17measure_sqrt_timeILy5EEvv+0xaee>
 217:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 21b:	c5 c3 5a ff          	vcvtsd2ss %xmm7,%xmm7,%xmm7
      { return _M_insert(__n); }
 21f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
 224:	c5 fa 11 7e 08       	vmovss %xmm7,0x8(%rsi)
 229:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 22d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 231:	0f 87 ad 08 00 00    	ja     ae4 <_Z17measure_sqrt_timeILy5EEvv+0xae4>
	__ostream_insert(__out, __s,
 237:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 23b:	48 83 c3 10          	add    $0x10,%rbx
 23f:	48 83 c6 10          	add    $0x10,%rsi
 243:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
      { return _M_insert(__n); }
 247:	c5 fa 11 5e fc       	vmovss %xmm3,-0x4(%rsi)
	__ostream_insert(__out, __s,
 24c:	4c 39 f3             	cmp    %r14,%rbx
 24f:	74 25                	je     276 <_Z17measure_sqrt_timeILy5EEvv+0x276>
 251:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 255:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
      { return __check_facet(_M_ctype).widen(__c); }
 259:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 25d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 261:	0f 86 69 ff ff ff    	jbe    1d0 <_Z17measure_sqrt_timeILy5EEvv+0x1d0>
      if (!__f)
 267:	e8 00 00 00 00       	callq  26c <_Z17measure_sqrt_timeILy5EEvv+0x26c>
 26c:	e9 5f ff ff ff       	jmpq   1d0 <_Z17measure_sqrt_timeILy5EEvv+0x1d0>
	if (_M_widen_ok)
 271:	e8 00 00 00 00       	callq  276 <_Z17measure_sqrt_timeILy5EEvv+0x276>
 276:	ff 4d ac             	decl   -0x54(%rbp)
 279:	0f 85 44 ff ff ff    	jne    1c3 <_Z17measure_sqrt_timeILy5EEvv+0x1c3>
    { return flush(__os.put(__os.widen('\n'))); }
 27f:	e8 00 00 00 00       	callq  284 <_Z17measure_sqrt_timeILy5EEvv+0x284>
    { return __os.flush(); }
 284:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 28b:	9b c4 20 
	__ostream_insert(__out, __s,
 28e:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 292:	4c 29 f8             	sub    %r15,%rax
 295:	48 89 c1             	mov    %rax,%rcx
 298:	48 f7 ea             	imul   %rdx
 29b:	48 c1 f9 3f          	sar    $0x3f,%rcx
 29f:	48 c1 fa 07          	sar    $0x7,%rdx
 2a3:	48 29 ca             	sub    %rcx,%rdx
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
 2a6:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2ad <_Z17measure_sqrt_timeILy5EEvv+0x2ad>
 2ad:	e8 00 00 00 00       	callq  2b2 <_Z17measure_sqrt_timeILy5EEvv+0x2b2>
 2b2:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 2b8:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 2f3 <_Z17measure_sqrt_timeILy5EEvv+0x2f3>
 2bf:	48 89 c6             	mov    %rax,%rsi
 2c2:	48 89 c1             	mov    %rax,%rcx
 2c5:	e8 00 00 00 00       	callq  2ca <_Z17measure_sqrt_timeILy5EEvv+0x2ca>
 2ca:	48 8b 06             	mov    (%rsi),%rax
 2cd:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
 2d1:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 2d8:	00 
 2d9:	48 85 db             	test   %rbx,%rbx
 2dc:	74 93                	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
      if (!__f)
 2de:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 2e2:	0f 84 d3 09 00 00    	je     cbb <_Z17measure_sqrt_timeILy5EEvv+0xcbb>
 2e8:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 2ec:	48 89 f1             	mov    %rsi,%rcx
 2ef:	e8 00 00 00 00       	callq  2f4 <_Z17measure_sqrt_timeILy5EEvv+0x2f4>
    { return flush(__os.put(__os.widen('\n'))); }
 2f4:	48 89 c1             	mov    %rax,%rcx
 2f7:	e8 00 00 00 00       	callq  2fc <_Z17measure_sqrt_timeILy5EEvv+0x2fc>
 2fc:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 303 <_Z17measure_sqrt_timeILy5EEvv+0x303>
 303:	41 b8 37 00 00 00    	mov    $0x37,%r8d
 309:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 350 <_Z17measure_sqrt_timeILy5EEvv+0x350>
    { return __os.flush(); }
 310:	e8 00 00 00 00       	callq  315 <_Z17measure_sqrt_timeILy5EEvv+0x315>
       floats[i] = random_double();
 315:	49 8b 04 24          	mov    (%r12),%rax
 319:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 31d:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 324:	00 
 325:	48 85 db             	test   %rbx,%rbx
 328:	0f 84 43 ff ff ff    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
    for (int i = 0; i < 4 * N; i++) {
 32e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
	__ostream_insert(__out, __s,
 332:	0f 84 5d 08 00 00    	je     b95 <_Z17measure_sqrt_timeILy5EEvv+0xb95>
 338:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 33c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 343 <_Z17measure_sqrt_timeILy5EEvv+0x343>
 343:	e8 00 00 00 00       	callq  348 <_Z17measure_sqrt_timeILy5EEvv+0x348>
 348:	48 89 c1             	mov    %rax,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
 34b:	e8 00 00 00 00       	callq  350 <_Z17measure_sqrt_timeILy5EEvv+0x350>
 350:	e8 00 00 00 00       	callq  355 <_Z17measure_sqrt_timeILy5EEvv+0x355>
      { return __check_facet(_M_ctype).widen(__c); }
 355:	ba e8 03 00 00       	mov    $0x3e8,%edx
 35a:	c5 f8 28 3d 50 01 00 	vmovaps 0x150(%rip),%xmm7        # 4b2 <_Z17measure_sqrt_timeILy5EEvv+0x4b2>
 361:	00 
      if (!__f)
 362:	c5 f8 28 35 60 01 00 	vmovaps 0x160(%rip),%xmm6        # 4ca <_Z17measure_sqrt_timeILy5EEvv+0x4ca>
 369:	00 
 36a:	48 89 c3             	mov    %rax,%rbx
 36d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 371:	31 c0                	xor    %eax,%eax
 373:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
 37a:	48 83 c0 10          	add    $0x10,%rax
 37e:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
    { return __os.flush(); }
 383:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
 387:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
       start = steady_clock::now();
 38b:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 38f:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 393:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 397:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 39b:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 39f:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 3a3:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 3a7:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 3ab:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 3af:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
          roots[i + k] = sqrt(floats[i + k]);
 3b3:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 3b7:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
 3bb:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
 3bf:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 3c3:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
 3c9:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
 3cf:	75 a2                	jne    373 <_Z17measure_sqrt_timeILy5EEvv+0x373>
 3d1:	ff ca                	dec    %edx
 3d3:	75 9c                	jne    371 <_Z17measure_sqrt_timeILy5EEvv+0x371>
 3d5:	e8 00 00 00 00       	callq  3da <_Z17measure_sqrt_timeILy5EEvv+0x3da>
 3da:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 3e1:	9b c4 20 
 3e4:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 3e8:	48 29 d8             	sub    %rbx,%rax
 3eb:	48 89 c1             	mov    %rax,%rcx
 3ee:	48 f7 ea             	imul   %rdx
 3f1:	48 c1 f9 3f          	sar    $0x3f,%rcx
 3f5:	48 c1 fa 07          	sar    $0x7,%rdx
 3f9:	48 29 ca             	sub    %rcx,%rdx
 3fc:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 403 <_Z17measure_sqrt_timeILy5EEvv+0x403>
 403:	e8 00 00 00 00       	callq  408 <_Z17measure_sqrt_timeILy5EEvv+0x408>
 408:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 40e:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 449 <_Z17measure_sqrt_timeILy5EEvv+0x449>
 415:	48 89 c6             	mov    %rax,%rsi
 418:	48 89 c1             	mov    %rax,%rcx
 41b:	e8 00 00 00 00       	callq  420 <_Z17measure_sqrt_timeILy5EEvv+0x420>
 420:	48 8b 06             	mov    (%rsi),%rax
 423:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 427:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 42e:	00 
 42f:	48 85 db             	test   %rbx,%rbx
      for (int i = 0; i < 4 * N; i += 4) {
 432:	0f 84 39 fe ff ff    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
          roots[i + k] = sqrt(floats[i + k]);
 438:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 43c:	0f 84 17 08 00 00    	je     c59 <_Z17measure_sqrt_timeILy5EEvv+0xc59>
 442:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 446:	48 89 f1             	mov    %rsi,%rcx
 449:	e8 00 00 00 00       	callq  44e <_Z17measure_sqrt_timeILy5EEvv+0x44e>
 44e:	48 89 c1             	mov    %rax,%rcx
 451:	e8 00 00 00 00       	callq  456 <_Z17measure_sqrt_timeILy5EEvv+0x456>
	__throw_bad_cast();
 456:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 45d <_Z17measure_sqrt_timeILy5EEvv+0x45d>
 45d:	41 b8 39 00 00 00    	mov    $0x39,%r8d
    for (int j = 0; j < LOOP; j++) {
 463:	48 8d 15 78 00 00 00 	lea    0x78(%rip),%rdx        # 4e2 <_Z17measure_sqrt_timeILy5EEvv+0x4e2>
       end = steady_clock::now();
 46a:	e8 00 00 00 00       	callq  46f <_Z17measure_sqrt_timeILy5EEvv+0x46f>
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 46f:	49 8b 04 24          	mov    (%r12),%rax
 473:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 477:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 47e:	00 
 47f:	48 85 db             	test   %rbx,%rbx
 482:	0f 84 e9 fd ff ff    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
 488:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 48c:	0f 84 34 07 00 00    	je     bc6 <_Z17measure_sqrt_timeILy5EEvv+0xbc6>
      { return _M_insert(__n); }
 492:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 496:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 49d <_Z17measure_sqrt_timeILy5EEvv+0x49d>
	__ostream_insert(__out, __s,
 49d:	e8 00 00 00 00       	callq  4a2 <_Z17measure_sqrt_timeILy5EEvv+0x4a2>
 4a2:	48 89 c1             	mov    %rax,%rcx
 4a5:	e8 00 00 00 00       	callq  4aa <_Z17measure_sqrt_timeILy5EEvv+0x4aa>
      { return _M_insert(__n); }
 4aa:	e8 00 00 00 00       	callq  4af <_Z17measure_sqrt_timeILy5EEvv+0x4af>
	__ostream_insert(__out, __s,
 4af:	ba e8 03 00 00       	mov    $0x3e8,%edx
    { return flush(__os.put(__os.widen('\n'))); }
 4b4:	48 89 c6             	mov    %rax,%rsi
      { return __check_facet(_M_ctype).widen(__c); }
 4b7:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 4bb:	4c 89 e8             	mov    %r13,%rax
 4be:	48 89 fb             	mov    %rdi,%rbx
 4c1:	c5 f8 28 20          	vmovaps (%rax),%xmm4
      if (!__f)
 4c5:	c5 f8 28 40 20       	vmovaps 0x20(%rax),%xmm0
 4ca:	48 83 c3 40          	add    $0x40,%rbx
 4ce:	48 83 c0 40          	add    $0x40,%rax
 4d2:	c5 d8 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm2
 4d8:	c5 f8 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm1
    { return __os.flush(); }
 4de:	c5 d8 c6 60 d0 dd    	vshufps $0xdd,-0x30(%rax),%xmm4,%xmm4
 4e4:	c5 f8 c6 40 f0 dd    	vshufps $0xdd,-0x10(%rax),%xmm0,%xmm0
	__ostream_insert(__out, __s,
 4ea:	c5 e8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm2,%xmm3
 4ef:	c5 e8 c6 c9 dd       	vshufps $0xdd,%xmm1,%xmm2,%xmm1
 4f4:	c5 d8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm2
 4f9:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
 4fe:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 503:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 507:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 50b:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
      if (!__f)
 50f:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 513:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 517:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 51b:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 51f:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 523:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
 527:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 52b:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 52f:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
    { return __os.flush(); }
 533:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 537:	c5 e0 5e dc          	vdivps %xmm4,%xmm3,%xmm3
       start = steady_clock::now();
 53b:	c5 e0 58 dc          	vaddps %xmm4,%xmm3,%xmm3
 53f:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
 544:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 548:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 54c:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
 550:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 554:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 558:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 55c:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 560:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 564:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 568:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 56c:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 570:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 574:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
    root = 0.5 * (root + (* a / root));
 578:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 57c:	c5 e8 5e d4          	vdivps %xmm4,%xmm2,%xmm2
 580:	c5 e8 58 d4          	vaddps %xmm4,%xmm2,%xmm2
 584:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
 589:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
        roots[i] = sqrt1<LOOPS>(floats + i);
 58d:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 591:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 595:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 599:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
    for (int j = 0; j < LOOP; j++) {
 59d:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
       end = steady_clock::now();
 5a1:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 5a5:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 5a9:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 5ad:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5b1:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 5b5:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 5b9:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5bd:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 5c1:	c5 f0 5e cc          	vdivps %xmm4,%xmm1,%xmm1
 5c5:	c5 f0 58 cc          	vaddps %xmm4,%xmm1,%xmm1
      { return _M_insert(__n); }
 5c9:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
 5ce:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 5d2:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
	__ostream_insert(__out, __s,
 5d6:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 5da:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5de:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      { return _M_insert(__n); }
 5e2:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
	__ostream_insert(__out, __s,
 5e6:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5ea:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      { return __check_facet(_M_ctype).widen(__c); }
 5ee:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 5f2:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5f6:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      if (!__f)
 5fa:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 5fe:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 602:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 606:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
 60a:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
 60e:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
 612:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
 616:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
    { return __os.flush(); }
 61a:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
 61e:	c5 e8 15 d0          	vunpckhps %xmm0,%xmm2,%xmm2
	__ostream_insert(__out, __s,
 622:	c5 d8 14 c3          	vunpcklps %xmm3,%xmm4,%xmm0
 626:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
 62a:	c5 f8 29 43 c0       	vmovaps %xmm0,-0x40(%rbx)
 62f:	c5 f0 14 c2          	vunpcklps %xmm2,%xmm1,%xmm0
 633:	c5 f0 15 ca          	vunpckhps %xmm2,%xmm1,%xmm1
 637:	c5 f8 29 63 d0       	vmovaps %xmm4,-0x30(%rbx)
    { return flush(__os.put(__os.widen('\n'))); }
 63c:	c5 f8 29 43 e0       	vmovaps %xmm0,-0x20(%rbx)
      { return __check_facet(_M_ctype).widen(__c); }
 641:	c5 f8 29 4b f0       	vmovaps %xmm1,-0x10(%rbx)
 646:	49 39 dd             	cmp    %rbx,%r13
      if (!__f)
 649:	0f 85 72 fe ff ff    	jne    4c1 <_Z17measure_sqrt_timeILy5EEvv+0x4c1>
 64f:	ff ca                	dec    %edx
 651:	0f 85 64 fe ff ff    	jne    4bb <_Z17measure_sqrt_timeILy5EEvv+0x4bb>
 657:	e8 00 00 00 00       	callq  65c <_Z17measure_sqrt_timeILy5EEvv+0x65c>
 65c:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 663:	9b c4 20 
 666:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 66a:	48 29 f0             	sub    %rsi,%rax
    { return __os.flush(); }
 66d:	48 89 c1             	mov    %rax,%rcx
 670:	48 f7 ea             	imul   %rdx
 673:	48 c1 f9 3f          	sar    $0x3f,%rcx
       start = steady_clock::now();
 677:	48 c1 fa 07          	sar    $0x7,%rdx
 67b:	48 29 ca             	sub    %rcx,%rdx
 67e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 685 <_Z17measure_sqrt_timeILy5EEvv+0x685>
 685:	e8 00 00 00 00       	callq  68a <_Z17measure_sqrt_timeILy5EEvv+0x68a>
 68a:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 690:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 6cb <_Z17measure_sqrt_timeILy5EEvv+0x6cb>
 697:	49 89 c6             	mov    %rax,%r14
 69a:	48 89 c1             	mov    %rax,%rcx
 69d:	e8 00 00 00 00       	callq  6a2 <_Z17measure_sqrt_timeILy5EEvv+0x6a2>
 6a2:	49 8b 06             	mov    (%r14),%rax
 6a5:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 6a9:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
 6b0:	00 
 6b1:	48 85 f6             	test   %rsi,%rsi
 6b4:	0f 84 b7 fb ff ff    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
 6ba:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 6be:	0f 84 c6 05 00 00    	je     c8a <_Z17measure_sqrt_timeILy5EEvv+0xc8a>
 6c4:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 6c8:	4c 89 f1             	mov    %r14,%rcx
 6cb:	e8 00 00 00 00       	callq  6d0 <_Z17measure_sqrt_timeILy5EEvv+0x6d0>
 6d0:	48 89 c1             	mov    %rax,%rcx
 6d3:	e8 00 00 00 00       	callq  6d8 <_Z17measure_sqrt_timeILy5EEvv+0x6d8>
    root = 0.5 * (root + (* a / root));
 6d8:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 6df <_Z17measure_sqrt_timeILy5EEvv+0x6df>
 6df:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
 6e5:	48 8d 15 b8 00 00 00 	lea    0xb8(%rip),%rdx        # 7a4 <_Z17measure_sqrt_timeILy5EEvv+0x7a4>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 6ec:	e8 00 00 00 00       	callq  6f1 <_Z17measure_sqrt_timeILy5EEvv+0x6f1>
 6f1:	49 8b 04 24          	mov    (%r12),%rax
    root = 0.5 * (root + (* a / root));
 6f5:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 6f9:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
 700:	00 
 701:	48 85 f6             	test   %rsi,%rsi
 704:	0f 84 67 fb ff ff    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
 70a:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 70e:	0f 84 e3 04 00 00    	je     bf7 <_Z17measure_sqrt_timeILy5EEvv+0xbf7>
    root = 0.5 * (root + (* a / root));
 714:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 718:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 71f <_Z17measure_sqrt_timeILy5EEvv+0x71f>
 71f:	e8 00 00 00 00       	callq  724 <_Z17measure_sqrt_timeILy5EEvv+0x724>
 724:	48 89 c1             	mov    %rax,%rcx
 727:	e8 00 00 00 00       	callq  72c <_Z17measure_sqrt_timeILy5EEvv+0x72c>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 72c:	e8 00 00 00 00       	callq  731 <_Z17measure_sqrt_timeILy5EEvv+0x731>
 731:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
    root = 0.5 * (root + (* a / root));
 736:	48 89 c6             	mov    %rax,%rsi
 739:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 73d:	4c 89 ea             	mov    %r13,%rdx
 740:	48 89 f8             	mov    %rdi,%rax
 743:	c5 f8 28 22          	vmovaps (%rdx),%xmm4
 747:	c5 f8 28 42 20       	vmovaps 0x20(%rdx),%xmm0
 74c:	48 83 c0 40          	add    $0x40,%rax
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
 750:	48 83 c2 40          	add    $0x40,%rdx
 754:	c5 f8 c6 4a f0 88    	vshufps $0x88,-0x10(%rdx),%xmm0,%xmm1
 75a:	c5 d8 c6 5a d0 88    	vshufps $0x88,-0x30(%rdx),%xmm4,%xmm3
 760:	c5 f8 c6 42 f0 dd    	vshufps $0xdd,-0x10(%rdx),%xmm0,%xmm0
 766:	c5 d8 c6 62 d0 dd    	vshufps $0xdd,-0x30(%rdx),%xmm4,%xmm4
 76c:	c5 e0 c6 d1 88       	vshufps $0x88,%xmm1,%xmm3,%xmm2
 771:	c5 e0 c6 d9 dd       	vshufps $0xdd,%xmm1,%xmm3,%xmm3
 776:	c5 d8 c6 c8 88       	vshufps $0x88,%xmm0,%xmm4,%xmm1
 77b:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
 780:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
 785:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 789:	c5 e8 5e ec          	vdivps %xmm4,%xmm2,%xmm5
 78d:	c5 d0 58 e4          	vaddps %xmm4,%xmm5,%xmm4
    for (int j = 0; j < LOOP; j++) {
 791:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 795:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
       end = steady_clock::now();
 79a:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 79e:	c5 70 5e cc          	vdivps %xmm4,%xmm1,%xmm9
 7a2:	c5 b0 58 e4          	vaddps %xmm4,%xmm9,%xmm4
 7a6:	c5 58 59 ce          	vmulps %xmm6,%xmm4,%xmm9
 7aa:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
 7af:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 7b3:	c5 60 5e c4          	vdivps %xmm4,%xmm3,%xmm8
 7b7:	c5 b8 58 e4          	vaddps %xmm4,%xmm8,%xmm4
 7bb:	c5 58 59 c6          	vmulps %xmm6,%xmm4,%xmm8
      { return _M_insert(__n); }
 7bf:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
 7c4:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 7c8:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
	__ostream_insert(__out, __s,
 7cc:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 7d0:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
 7d4:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
      { return _M_insert(__n); }
 7d8:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
	__ostream_insert(__out, __s,
 7dc:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
    { return flush(__os.put(__os.widen('\n'))); }
 7e1:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
      { return __check_facet(_M_ctype).widen(__c); }
 7e5:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 7ea:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
 7ef:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
      if (!__f)
 7f3:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 7f8:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
 7fc:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
 800:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 804:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
 808:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 80c:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
    { return __os.flush(); }
 810:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
 815:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
	__ostream_insert(__out, __s,
 819:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 81e:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
 823:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
 827:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 82c:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
    { return flush(__os.put(__os.widen('\n'))); }
 830:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
      { return __check_facet(_M_ctype).widen(__c); }
 834:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 838:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
 83c:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
      if (!__f)
 840:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
 844:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
 849:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
 84d:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 852:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
 857:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
 85b:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 860:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
    { return __os.flush(); }
 864:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
 868:	c5 e8 5e d5          	vdivps %xmm5,%xmm2,%xmm2
       start = steady_clock::now();
 86c:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 870:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 874:	c5 e8 58 d5          	vaddps %xmm5,%xmm2,%xmm2
 878:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
 87c:	c5 e8 59 ee          	vmulps %xmm6,%xmm2,%xmm5
 880:	c4 c1 70 5e d1       	vdivps %xmm9,%xmm1,%xmm2
    initial[0] = (1 << 29) + (ai[0] >> 1) - (1 << 22) - 0x4C000;
 885:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
 889:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 88d:	c4 c1 60 5e c8       	vdivps %xmm8,%xmm3,%xmm1
 892:	c4 c1 68 58 d1       	vaddps %xmm9,%xmm2,%xmm2
 897:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 89b:	c5 e8 14 e0          	vunpcklps %xmm0,%xmm2,%xmm4
 89f:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
 8a3:	c4 c1 70 58 c8       	vaddps %xmm8,%xmm1,%xmm1
 8a8:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 8ac:	c5 d0 14 d9          	vunpcklps %xmm1,%xmm5,%xmm3
 8b0:	c5 d0 15 c9          	vunpckhps %xmm1,%xmm5,%xmm1
 8b4:	c5 e0 14 d4          	vunpcklps %xmm4,%xmm3,%xmm2
 8b8:	c5 e0 15 dc          	vunpckhps %xmm4,%xmm3,%xmm3
 8bc:	c5 f8 29 50 c0       	vmovaps %xmm2,-0x40(%rax)
 8c1:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
 8c5:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8c9:	c5 f8 29 58 d0       	vmovaps %xmm3,-0x30(%rax)
 8ce:	c5 f8 29 50 e0       	vmovaps %xmm2,-0x20(%rax)
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
 8d3:	c5 f8 29 48 f0       	vmovaps %xmm1,-0x10(%rax)
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8d8:	48 39 d8             	cmp    %rbx,%rax
 8db:	0f 85 62 fe ff ff    	jne    743 <_Z17measure_sqrt_timeILy5EEvv+0x743>
 8e1:	ff c9                	dec    %ecx
 8e3:	0f 85 54 fe ff ff    	jne    73d <_Z17measure_sqrt_timeILy5EEvv+0x73d>
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
 8e9:	e8 00 00 00 00       	callq  8ee <_Z17measure_sqrt_timeILy5EEvv+0x8ee>
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8ee:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 8f5:	9b c4 20 
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 8f8:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8fc:	48 29 f0             	sub    %rsi,%rax
 8ff:	48 89 c1             	mov    %rax,%rcx
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 902:	48 f7 ea             	imul   %rdx
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
 905:	48 c1 f9 3f          	sar    $0x3f,%rcx
 909:	48 c1 fa 07          	sar    $0x7,%rdx
 90d:	48 29 ca             	sub    %rcx,%rdx
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 910:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 917 <_Z17measure_sqrt_timeILy5EEvv+0x917>
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 917:	e8 00 00 00 00       	callq  91c <_Z17measure_sqrt_timeILy5EEvv+0x91c>
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 91c:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 922:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 95d <_Z17measure_sqrt_timeILy5EEvv+0x95d>
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 929:	48 89 c6             	mov    %rax,%rsi
 92c:	48 89 c1             	mov    %rax,%rcx
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 92f:	e8 00 00 00 00       	callq  934 <_Z17measure_sqrt_timeILy5EEvv+0x934>
 934:	48 8b 06             	mov    (%rsi),%rax
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 937:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 93b:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 942:	00 
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 943:	48 85 db             	test   %rbx,%rbx
 946:	0f 84 25 f9 ff ff    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
 94c:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 950:	0f 84 d2 02 00 00    	je     c28 <_Z17measure_sqrt_timeILy5EEvv+0xc28>
 956:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 95a:	48 89 f1             	mov    %rsi,%rcx
 95d:	e8 00 00 00 00       	callq  962 <_Z17measure_sqrt_timeILy5EEvv+0x962>
 962:	48 89 c1             	mov    %rax,%rcx
 965:	e8 00 00 00 00       	callq  96a <_Z17measure_sqrt_timeILy5EEvv+0x96a>
 96a:	e8 00 00 00 00       	callq  96f <_Z17measure_sqrt_timeILy5EEvv+0x96f>
 96f:	ba e8 03 00 00       	mov    $0x3e8,%edx
 974:	48 89 c6             	mov    %rax,%rsi
 977:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 97b:	31 c0                	xor    %eax,%eax
 97d:	0f 1f 00             	nopl   (%rax)
 980:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
    for (int j = 0; j < LOOP; j++) {
 987:	48 83 c0 10          	add    $0x10,%rax
       end = steady_clock::now();
 98b:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 990:	c5 f1 fe cf          	vpaddd %xmm7,%xmm1,%xmm1
 994:	c5 f8 5e d1          	vdivps %xmm1,%xmm0,%xmm2
 998:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
 99c:	c5 e8 59 ce          	vmulps %xmm6,%xmm2,%xmm1
 9a0:	c5 f8 5e d1          	vdivps %xmm1,%xmm0,%xmm2
 9a4:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
 9a8:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 9ac:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 9b0:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
      { return _M_insert(__n); }
 9b4:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 9b8:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 9bc:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
	__ostream_insert(__out, __s,
 9c0:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 9c4:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
 9c8:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
      { return _M_insert(__n); }
 9cc:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
	__ostream_insert(__out, __s,
 9d0:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
    { return flush(__os.put(__os.widen('\n'))); }
 9d6:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
      { return __check_facet(_M_ctype).widen(__c); }
 9dc:	75 a2                	jne    980 <_Z17measure_sqrt_timeILy5EEvv+0x980>
 9de:	ff ca                	dec    %edx
 9e0:	75 99                	jne    97b <_Z17measure_sqrt_timeILy5EEvv+0x97b>
 9e2:	e8 00 00 00 00       	callq  9e7 <_Z17measure_sqrt_timeILy5EEvv+0x9e7>
      if (!__f)
 9e7:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 9ee <_Z17measure_sqrt_timeILy5EEvv+0x9ee>
 9ee:	41 b8 34 00 00 00    	mov    $0x34,%r8d
 9f4:	48 8d 15 e8 00 00 00 	lea    0xe8(%rip),%rdx        # ae3 <_Z17measure_sqrt_timeILy5EEvv+0xae3>
 9fb:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 9ff:	48 29 f0             	sub    %rsi,%rax
 a02:	48 89 c3             	mov    %rax,%rbx
    { return __os.flush(); }
 a05:	e8 00 00 00 00       	callq  a0a <_Z17measure_sqrt_timeILy5EEvv+0xa0a>
 a0a:	49 8b 04 24          	mov    (%r12),%rax
       start = steady_clock::now();
 a0e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 a12:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
 a19:	00 
 a1a:	48 85 f6             	test   %rsi,%rsi
 a1d:	0f 84 4e f8 ff ff    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 a23:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 a27:	0f 84 f0 02 00 00    	je     d1d <_Z17measure_sqrt_timeILy5EEvv+0xd1d>
 a2d:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 a31:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # a38 <_Z17measure_sqrt_timeILy5EEvv+0xa38>
    * root = 0.5 * (* root + (* a / * root));
 a38:	e8 00 00 00 00       	callq  a3d <_Z17measure_sqrt_timeILy5EEvv+0xa3d>
 a3d:	48 89 c1             	mov    %rax,%rcx
 a40:	e8 00 00 00 00       	callq  a45 <_Z17measure_sqrt_timeILy5EEvv+0xa45>
 a45:	48 89 d8             	mov    %rbx,%rax
 a48:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 a4f:	9b c4 20 
      for (int i = 0; i < 4 * N; i += 4) {
 a52:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # a59 <_Z17measure_sqrt_timeILy5EEvv+0xa59>
 a59:	48 c1 fb 3f          	sar    $0x3f,%rbx
    for (int j = 0; j < LOOP; j++) {
 a5d:	48 f7 ea             	imul   %rdx
       end = steady_clock::now();
 a60:	48 c1 fa 07          	sar    $0x7,%rdx
	__ostream_insert(__out, __s,
 a64:	48 29 da             	sub    %rbx,%rdx
 a67:	e8 00 00 00 00       	callq  a6c <_Z17measure_sqrt_timeILy5EEvv+0xa6c>
 a6c:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 a72:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # aad <_Z17measure_sqrt_timeILy5EEvv+0xaad>
 a79:	48 89 c6             	mov    %rax,%rsi
 a7c:	48 89 c1             	mov    %rax,%rcx
 a7f:	e8 00 00 00 00       	callq  a84 <_Z17measure_sqrt_timeILy5EEvv+0xa84>
 a84:	48 8b 06             	mov    (%rsi),%rax
    { return flush(__os.put(__os.widen('\n'))); }
 a87:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
 a8b:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 a92:	00 
 a93:	48 85 db             	test   %rbx,%rbx
      if (!__f)
 a96:	0f 84 d5 f7 ff ff    	je     271 <_Z17measure_sqrt_timeILy5EEvv+0x271>
 a9c:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 aa0:	0f 84 46 02 00 00    	je     cec <_Z17measure_sqrt_timeILy5EEvv+0xcec>
 aa6:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 aaa:	48 89 f1             	mov    %rsi,%rcx
 aad:	e8 00 00 00 00       	callq  ab2 <_Z17measure_sqrt_timeILy5EEvv+0xab2>
 ab2:	90                   	nop
 ab3:	c5 f8 28 75 d0       	vmovaps -0x30(%rbp),%xmm6
    { return __os.flush(); }
 ab8:	c5 f8 28 7d e0       	vmovaps -0x20(%rbp),%xmm7
 abd:	c5 78 28 45 f0       	vmovaps -0x10(%rbp),%xmm8
    std::cout << time.time_clock().count() / LOOP  << " [ns]" << std::endl;
 ac2:	48 89 c1             	mov    %rax,%rcx
 ac5:	c5 78 28 4d 00       	vmovaps 0x0(%rbp),%xmm9
 aca:	c5 78 28 55 10       	vmovaps 0x10(%rbp),%xmm10
      { return _M_insert(__n); }
 acf:	48 8d 65 28          	lea    0x28(%rbp),%rsp
 ad3:	5b                   	pop    %rbx
 ad4:	5e                   	pop    %rsi
 ad5:	5f                   	pop    %rdi
 ad6:	41 5c                	pop    %r12
 ad8:	41 5d                	pop    %r13
 ada:	41 5e                	pop    %r14
 adc:	41 5f                	pop    %r15
 ade:	5d                   	pop    %rbp
 adf:	e9 00 00 00 00       	jmpq   ae4 <_Z17measure_sqrt_timeILy5EEvv+0xae4>
 ae4:	e8 00 00 00 00       	callq  ae9 <_Z17measure_sqrt_timeILy5EEvv+0xae9>
	__ostream_insert(__out, __s,
 ae9:	e9 49 f7 ff ff       	jmpq   237 <_Z17measure_sqrt_timeILy5EEvv+0x237>
 aee:	e8 00 00 00 00       	callq  af3 <_Z17measure_sqrt_timeILy5EEvv+0xaf3>
 af3:	e9 1f f7 ff ff       	jmpq   217 <_Z17measure_sqrt_timeILy5EEvv+0x217>
 af8:	e8 00 00 00 00       	callq  afd <_Z17measure_sqrt_timeILy5EEvv+0xafd>
 afd:	e9 f1 f6 ff ff       	jmpq   1f3 <_Z17measure_sqrt_timeILy5EEvv+0x1f3>
      { return __check_facet(_M_ctype).widen(__c); }
 b02:	48 89 d9             	mov    %rbx,%rcx
 b05:	e8 00 00 00 00       	callq  b0a <_Z17measure_sqrt_timeILy5EEvv+0xb0a>
 b0a:	48 8b 03             	mov    (%rbx),%rax
 b0d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b14 <_Z17measure_sqrt_timeILy5EEvv+0xb14>
      if (!__f)
 b14:	ba 0a 00 00 00       	mov    $0xa,%edx
 b19:	48 8b 40 30          	mov    0x30(%rax),%rax
 b1d:	48 39 c8             	cmp    %rcx,%rax
 b20:	0f 84 ee f5 ff ff    	je     114 <_Z17measure_sqrt_timeILy5EEvv+0x114>
    { return flush(__os.put(__os.widen('\n'))); }
 b26:	48 89 d9             	mov    %rbx,%rcx
 b29:	ff d0                	callq  *%rax
 b2b:	0f be d0             	movsbl %al,%edx
}
 b2e:	e9 e1 f5 ff ff       	jmpq   114 <_Z17measure_sqrt_timeILy5EEvv+0x114>
 b33:	48 89 d9             	mov    %rbx,%rcx
 b36:	e8 00 00 00 00       	callq  b3b <_Z17measure_sqrt_timeILy5EEvv+0xb3b>
 b3b:	48 8b 03             	mov    (%rbx),%rax
    { return __os.flush(); }
 b3e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b45 <_Z17measure_sqrt_timeILy5EEvv+0xb45>
 b45:	ba 0a 00 00 00       	mov    $0xa,%edx
 b4a:	48 8b 40 30          	mov    0x30(%rax),%rax
 b4e:	48 39 c8             	cmp    %rcx,%rax
 b51:	0f 84 45 f5 ff ff    	je     9c <_Z17measure_sqrt_timeILy5EEvv+0x9c>
 b57:	48 89 d9             	mov    %rbx,%rcx
 b5a:	ff d0                	callq  *%rax
 b5c:	0f be d0             	movsbl %al,%edx
 b5f:	e9 38 f5 ff ff       	jmpq   9c <_Z17measure_sqrt_timeILy5EEvv+0x9c>
          roots[i + k] = sqrt(floats[i + k]);
 b64:	48 89 d9             	mov    %rbx,%rcx
 b67:	e8 00 00 00 00       	callq  b6c <_Z17measure_sqrt_timeILy5EEvv+0xb6c>
 b6c:	48 8b 03             	mov    (%rbx),%rax
 b6f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b76 <_Z17measure_sqrt_timeILy5EEvv+0xb76>
 b76:	ba 0a 00 00 00       	mov    $0xa,%edx
 b7b:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 b7f:	48 39 c8             	cmp    %rcx,%rax
 b82:	0f 84 10 f6 ff ff    	je     198 <_Z17measure_sqrt_timeILy5EEvv+0x198>
	return this->do_widen(__c);
 b88:	48 89 d9             	mov    %rbx,%rcx
 b8b:	ff d0                	callq  *%rax
 b8d:	0f be d0             	movsbl %al,%edx
 b90:	e9 03 f6 ff ff       	jmpq   198 <_Z17measure_sqrt_timeILy5EEvv+0x198>
 b95:	48 89 d9             	mov    %rbx,%rcx
 b98:	e8 00 00 00 00       	callq  b9d <_Z17measure_sqrt_timeILy5EEvv+0xb9d>
 b9d:	48 8b 03             	mov    (%rbx),%rax
 ba0:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ba7 <_Z17measure_sqrt_timeILy5EEvv+0xba7>
 ba7:	ba 0a 00 00 00       	mov    $0xa,%edx
 bac:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 bb0:	48 39 c8             	cmp    %rcx,%rax
 bb3:	0f 84 83 f7 ff ff    	je     33c <_Z17measure_sqrt_timeILy5EEvv+0x33c>
	return this->do_widen(__c);
 bb9:	48 89 d9             	mov    %rbx,%rcx
 bbc:	ff d0                	callq  *%rax
 bbe:	0f be d0             	movsbl %al,%edx
 bc1:	e9 76 f7 ff ff       	jmpq   33c <_Z17measure_sqrt_timeILy5EEvv+0x33c>
 bc6:	48 89 d9             	mov    %rbx,%rcx
 bc9:	e8 00 00 00 00       	callq  bce <_Z17measure_sqrt_timeILy5EEvv+0xbce>
 bce:	48 8b 03             	mov    (%rbx),%rax
 bd1:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # bd8 <_Z17measure_sqrt_timeILy5EEvv+0xbd8>
 bd8:	ba 0a 00 00 00       	mov    $0xa,%edx
 bdd:	48 8b 40 30          	mov    0x30(%rax),%rax
      { return __c; }
 be1:	48 39 c8             	cmp    %rcx,%rax
	this->_M_widen_init();
 be4:	0f 84 ac f8 ff ff    	je     496 <_Z17measure_sqrt_timeILy5EEvv+0x496>
	return this->do_widen(__c);
 bea:	48 89 d9             	mov    %rbx,%rcx
 bed:	ff d0                	callq  *%rax
 bef:	0f be d0             	movsbl %al,%edx
 bf2:	e9 9f f8 ff ff       	jmpq   496 <_Z17measure_sqrt_timeILy5EEvv+0x496>
 bf7:	48 89 f1             	mov    %rsi,%rcx
 bfa:	e8 00 00 00 00       	callq  bff <_Z17measure_sqrt_timeILy5EEvv+0xbff>
 bff:	48 8b 06             	mov    (%rsi),%rax
 c02:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c09 <_Z17measure_sqrt_timeILy5EEvv+0xc09>
 c09:	ba 0a 00 00 00       	mov    $0xa,%edx
 c0e:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 c12:	48 39 c8             	cmp    %rcx,%rax
 c15:	0f 84 fd fa ff ff    	je     718 <_Z17measure_sqrt_timeILy5EEvv+0x718>
	return this->do_widen(__c);
 c1b:	48 89 f1             	mov    %rsi,%rcx
 c1e:	ff d0                	callq  *%rax
 c20:	0f be d0             	movsbl %al,%edx
 c23:	e9 f0 fa ff ff       	jmpq   718 <_Z17measure_sqrt_timeILy5EEvv+0x718>
 c28:	48 89 d9             	mov    %rbx,%rcx
 c2b:	e8 00 00 00 00       	callq  c30 <_Z17measure_sqrt_timeILy5EEvv+0xc30>
 c30:	48 8b 03             	mov    (%rbx),%rax
 c33:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c3a <_Z17measure_sqrt_timeILy5EEvv+0xc3a>
 c3a:	ba 0a 00 00 00       	mov    $0xa,%edx
 c3f:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 c43:	48 39 c8             	cmp    %rcx,%rax
 c46:	0f 84 0e fd ff ff    	je     95a <_Z17measure_sqrt_timeILy5EEvv+0x95a>
	return this->do_widen(__c);
 c4c:	48 89 d9             	mov    %rbx,%rcx
 c4f:	ff d0                	callq  *%rax
 c51:	0f be d0             	movsbl %al,%edx
 c54:	e9 01 fd ff ff       	jmpq   95a <_Z17measure_sqrt_timeILy5EEvv+0x95a>
 c59:	48 89 d9             	mov    %rbx,%rcx
 c5c:	e8 00 00 00 00       	callq  c61 <_Z17measure_sqrt_timeILy5EEvv+0xc61>
 c61:	48 8b 03             	mov    (%rbx),%rax
 c64:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c6b <_Z17measure_sqrt_timeILy5EEvv+0xc6b>
 c6b:	ba 0a 00 00 00       	mov    $0xa,%edx
 c70:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 c74:	48 39 c8             	cmp    %rcx,%rax
 c77:	0f 84 c9 f7 ff ff    	je     446 <_Z17measure_sqrt_timeILy5EEvv+0x446>
	return this->do_widen(__c);
 c7d:	48 89 d9             	mov    %rbx,%rcx
 c80:	ff d0                	callq  *%rax
 c82:	0f be d0             	movsbl %al,%edx
 c85:	e9 bc f7 ff ff       	jmpq   446 <_Z17measure_sqrt_timeILy5EEvv+0x446>
 c8a:	48 89 f1             	mov    %rsi,%rcx
 c8d:	e8 00 00 00 00       	callq  c92 <_Z17measure_sqrt_timeILy5EEvv+0xc92>
 c92:	48 8b 06             	mov    (%rsi),%rax
 c95:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c9c <_Z17measure_sqrt_timeILy5EEvv+0xc9c>
 c9c:	ba 0a 00 00 00       	mov    $0xa,%edx
 ca1:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 ca5:	48 39 c8             	cmp    %rcx,%rax
 ca8:	0f 84 1a fa ff ff    	je     6c8 <_Z17measure_sqrt_timeILy5EEvv+0x6c8>
	return this->do_widen(__c);
 cae:	48 89 f1             	mov    %rsi,%rcx
 cb1:	ff d0                	callq  *%rax
 cb3:	0f be d0             	movsbl %al,%edx
 cb6:	e9 0d fa ff ff       	jmpq   6c8 <_Z17measure_sqrt_timeILy5EEvv+0x6c8>
 cbb:	48 89 d9             	mov    %rbx,%rcx
 cbe:	e8 00 00 00 00       	callq  cc3 <_Z17measure_sqrt_timeILy5EEvv+0xcc3>
 cc3:	48 8b 03             	mov    (%rbx),%rax
 cc6:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ccd <_Z17measure_sqrt_timeILy5EEvv+0xccd>
 ccd:	ba 0a 00 00 00       	mov    $0xa,%edx
 cd2:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 cd6:	48 39 c8             	cmp    %rcx,%rax
 cd9:	0f 84 0d f6 ff ff    	je     2ec <_Z17measure_sqrt_timeILy5EEvv+0x2ec>
	return this->do_widen(__c);
 cdf:	48 89 d9             	mov    %rbx,%rcx
 ce2:	ff d0                	callq  *%rax
 ce4:	0f be d0             	movsbl %al,%edx
 ce7:	e9 00 f6 ff ff       	jmpq   2ec <_Z17measure_sqrt_timeILy5EEvv+0x2ec>
 cec:	48 89 d9             	mov    %rbx,%rcx
 cef:	e8 00 00 00 00       	callq  cf4 <_Z17measure_sqrt_timeILy5EEvv+0xcf4>
 cf4:	48 8b 03             	mov    (%rbx),%rax
 cf7:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # cfe <_Z17measure_sqrt_timeILy5EEvv+0xcfe>
 cfe:	ba 0a 00 00 00       	mov    $0xa,%edx
 d03:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 d07:	48 39 c8             	cmp    %rcx,%rax
 d0a:	0f 84 9a fd ff ff    	je     aaa <_Z17measure_sqrt_timeILy5EEvv+0xaaa>
	return this->do_widen(__c);
 d10:	48 89 d9             	mov    %rbx,%rcx
 d13:	ff d0                	callq  *%rax
 d15:	0f be d0             	movsbl %al,%edx
 d18:	e9 8d fd ff ff       	jmpq   aaa <_Z17measure_sqrt_timeILy5EEvv+0xaaa>
 d1d:	48 89 f1             	mov    %rsi,%rcx
 d20:	e8 00 00 00 00       	callq  d25 <_Z17measure_sqrt_timeILy5EEvv+0xd25>
 d25:	48 8b 06             	mov    (%rsi),%rax
 d28:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # d2f <_Z17measure_sqrt_timeILy5EEvv+0xd2f>
 d2f:	ba 0a 00 00 00       	mov    $0xa,%edx
 d34:	48 8b 40 30          	mov    0x30(%rax),%rax
	this->_M_widen_init();
 d38:	48 39 c8             	cmp    %rcx,%rax
 d3b:	0f 84 f0 fc ff ff    	je     a31 <_Z17measure_sqrt_timeILy5EEvv+0xa31>
	return this->do_widen(__c);
 d41:	48 89 f1             	mov    %rsi,%rcx
 d44:	ff d0                	callq  *%rax
 d46:	0f be d0             	movsbl %al,%edx
 d49:	e9 e3 fc ff ff       	jmpq   a31 <_Z17measure_sqrt_timeILy5EEvv+0xa31>
 d4e:	90                   	nop
 d4f:	90                   	nop

Disassembly of section .text$_Z17measure_sqrt_timeILy6EEvv:

0000000000000000 <_Z17measure_sqrt_timeILy6EEvv>:
   0:	55                   	push   %rbp
   1:	41 57                	push   %r15
   3:	41 56                	push   %r14
   5:	41 55                	push   %r13
   7:	41 54                	push   %r12
   9:	57                   	push   %rdi
   a:	56                   	push   %rsi
   b:	53                   	push   %rbx
   c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
{
  13:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  1a:	00 
  1b:	c5 f8 29 75 d0       	vmovaps %xmm6,-0x30(%rbp)
  static std::random_device device;
  20:	c5 f8 29 7d e0       	vmovaps %xmm7,-0x20(%rbp)
  25:	c5 78 29 45 f0       	vmovaps %xmm8,-0x10(%rbp)
  2a:	c5 78 29 4d 00       	vmovaps %xmm9,0x0(%rbp)
  2f:	c5 78 29 55 10       	vmovaps %xmm10,0x10(%rbp)
  34:	b8 80 6a 18 00       	mov    $0x186a80,%eax
  39:	e8 00 00 00 00       	callq  3e <_Z17measure_sqrt_timeILy6EEvv+0x3e>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  3e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 45 <_Z17measure_sqrt_timeILy6EEvv+0x45>
  45:	ba 06 00 00 00       	mov    $0x6,%edx
      return this->_M_getval_pretr1();
  4a:	48 29 c4             	sub    %rax,%rsp
  4d:	e8 00 00 00 00       	callq  52 <_Z17measure_sqrt_timeILy6EEvv+0x52>
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  52:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  58:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 5f <_Z17measure_sqrt_timeILy6EEvv+0x5f>
  5f:	48 8d bc 24 9f 00 00 	lea    0x9f(%rsp),%rdi
  66:	00 
  67:	48 89 c6             	mov    %rax,%rsi
  6a:	48 89 c1             	mov    %rax,%rcx
  6d:	48 83 e7 80          	and    $0xffffffffffffff80,%rdi
  71:	e8 00 00 00 00       	callq  76 <_Z17measure_sqrt_timeILy6EEvv+0x76>
  76:	48 8b 06             	mov    (%rsi),%rax
  79:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  7d:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  84:	00 
      __ret = __sum / __tmp;
  85:	48 85 db             	test   %rbx,%rbx
  88:	0f 84 e3 01 00 00    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
      if (__builtin_expect(__ret >= _RealType(1), 0))
  8e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  92:	0f 84 43 0b 00 00    	je     bdb <_Z17measure_sqrt_timeILy6EEvv+0xbdb>
  98:	0f be 53 43          	movsbl 0x43(%rbx),%edx
  9c:	48 89 f1             	mov    %rsi,%rcx
  9f:	e8 00 00 00 00       	callq  a4 <_Z17measure_sqrt_timeILy6EEvv+0xa4>
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
  a4:	48 89 c1             	mov    %rax,%rcx
  a7:	e8 00 00 00 00       	callq  ac <_Z17measure_sqrt_timeILy6EEvv+0xac>
}
  ac:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # b3 <_Z17measure_sqrt_timeILy6EEvv+0xb3>
  b3:	41 b8 0b 00 00 00    	mov    $0xb,%r8d
  b9:	48 8d 15 0c 00 00 00 	lea    0xc(%rip),%rdx        # cc <_Z17measure_sqrt_timeILy6EEvv+0xcc>
  c0:	e8 00 00 00 00       	callq  c5 <_Z17measure_sqrt_timeILy6EEvv+0xc5>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  c5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # cc <_Z17measure_sqrt_timeILy6EEvv+0xcc>
  cc:	ba 40 0d 03 00       	mov    $0x30d40,%edx
  d1:	e8 00 00 00 00       	callq  d6 <_Z17measure_sqrt_timeILy6EEvv+0xd6>
	: _M_a(__a), _M_b(__b)
  d6:	41 b8 11 00 00 00    	mov    $0x11,%r8d
  dc:	48 8d 15 18 00 00 00 	lea    0x18(%rip),%rdx        # fb <_Z17measure_sqrt_timeILy6EEvv+0xfb>
  e3:	48 89 c6             	mov    %rax,%rsi
  e6:	48 89 c1             	mov    %rax,%rcx
  e9:	e8 00 00 00 00       	callq  ee <_Z17measure_sqrt_timeILy6EEvv+0xee>
  ee:	48 8b 06             	mov    (%rsi),%rax
  f1:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  f5:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
  fc:	00 
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
  fd:	48 85 db             	test   %rbx,%rbx
 100:	0f 84 6b 01 00 00    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
    { _M_init_pretr1(__token); }
 106:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
      { _M_string_length = __length; }
 10a:	0f 84 9a 0a 00 00    	je     baa <_Z17measure_sqrt_timeILy6EEvv+0xbaa>
 110:	0f be 53 43          	movsbl 0x43(%rbx),%edx
	: allocator_type(__a), _M_p(__dat) { }
 114:	48 89 f1             	mov    %rsi,%rcx
 117:	4c 8d af 00 35 0c 00 	lea    0xc3500(%rdi),%r13
 11e:	48 8d 9f 00 6a 18 00 	lea    0x186a00(%rdi),%rbx
 125:	e8 00 00 00 00       	callq  12a <_Z17measure_sqrt_timeILy6EEvv+0x12a>
      { __c1 = __c2; }
 12a:	4d 89 ee             	mov    %r13,%r14
 12d:	48 89 c1             	mov    %rax,%rcx
 130:	e8 00 00 00 00       	callq  135 <_Z17measure_sqrt_timeILy6EEvv+0x135>
  static std::random_device device;
 135:	e8 10 00 00 00       	callq  14a <_Z17measure_sqrt_timeILy6EEvv+0x14a>
	if (!_M_is_local())
 13a:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
 13e:	49 83 c6 04          	add    $0x4,%r14
 142:	c5 c3 5a f8          	vcvtsd2ss %xmm0,%xmm7,%xmm7
 146:	c4 c1 7a 11 7e fc    	vmovss %xmm7,-0x4(%r14)
 14c:	49 39 de             	cmp    %rbx,%r14
 14f:	75 e4                	jne    135 <_Z17measure_sqrt_timeILy6EEvv+0x135>
 151:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 158 <_Z17measure_sqrt_timeILy6EEvv+0x158>
 158:	41 b8 09 00 00 00    	mov    $0x9,%r8d
 15e:	48 8d 15 2a 00 00 00 	lea    0x2a(%rip),%rdx        # 18f <_Z17measure_sqrt_timeILy6EEvv+0x18f>
	  __ret = std::nextafter(_RealType(1), _RealType(0));
 165:	e8 00 00 00 00       	callq  16a <_Z17measure_sqrt_timeILy6EEvv+0x16a>
 16a:	4c 8b 25 00 00 00 00 	mov    0x0(%rip),%r12        # 171 <_Z17measure_sqrt_timeILy6EEvv+0x171>
 171:	49 8b 04 24          	mov    (%r12),%rax
 175:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 179:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 180:	00 
 181:	48 85 db             	test   %rbx,%rbx
 184:	0f 84 e7 00 00 00    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
 18a:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 18e:	0f 84 78 0a 00 00    	je     c0c <_Z17measure_sqrt_timeILy6EEvv+0xc0c>
 194:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 198:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 19f <_Z17measure_sqrt_timeILy6EEvv+0x19f>
 19f:	e8 00 00 00 00       	callq  1a4 <_Z17measure_sqrt_timeILy6EEvv+0x1a4>
 1a4:	48 89 c1             	mov    %rax,%rcx
 1a7:	e8 00 00 00 00       	callq  1ac <_Z17measure_sqrt_timeILy6EEvv+0x1ac>
 1ac:	e8 00 00 00 00       	callq  1b1 <_Z17measure_sqrt_timeILy6EEvv+0x1b1>
 1b1:	c7 45 ac e8 03 00 00 	movl   $0x3e8,-0x54(%rbp)
 1b8:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
 1bc:	49 89 c7             	mov    %rax,%r15
 1bf:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 1c3:	48 89 fe             	mov    %rdi,%rsi
 1c6:	4c 89 eb             	mov    %r13,%rbx
 1c9:	e9 83 00 00 00       	jmpq   251 <_Z17measure_sqrt_timeILy6EEvv+0x251>
 1ce:	66 90                	xchg   %ax,%ax
 1d0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1d4:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1d8:	c5 fa 5a 43 04       	vcvtss2sd 0x4(%rbx),%xmm0,%xmm0
 1dd:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
void measure_sqrt_time(void) { // --> Segmentation error occurs here according to gdb https://stackoverflow.com/questions/3718998/fixing-segmentation-faults-in-c
 1e1:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 1e5:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 1e9:	c5 fa 11 1e          	vmovss %xmm3,(%rsi)
 1ed:	0f 87 ad 09 00 00    	ja     ba0 <_Z17measure_sqrt_timeILy6EEvv+0xba0>
 1f3:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 1f7:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 1fb:	c5 fa 5a 43 08       	vcvtss2sd 0x8(%rbx),%xmm0,%xmm0
 200:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
 204:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 208:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 20c:	c5 fa 11 5e 04       	vmovss %xmm3,0x4(%rsi)
 211:	0f 87 79 09 00 00    	ja     b90 <_Z17measure_sqrt_timeILy6EEvv+0xb90>
 217:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 21b:	c5 c3 5a ff          	vcvtsd2ss %xmm7,%xmm7,%xmm7
      { return _M_insert(__n); }
 21f:	c5 fa 5a 43 0c       	vcvtss2sd 0xc(%rbx),%xmm0,%xmm0
 224:	c5 fa 11 7e 08       	vmovss %xmm7,0x8(%rsi)
 229:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 22d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 231:	0f 87 4b 09 00 00    	ja     b82 <_Z17measure_sqrt_timeILy6EEvv+0xb82>
	__ostream_insert(__out, __s,
 237:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 23b:	48 83 c3 10          	add    $0x10,%rbx
 23f:	48 83 c6 10          	add    $0x10,%rsi
 243:	c5 e3 5a df          	vcvtsd2ss %xmm7,%xmm3,%xmm3
      { return _M_insert(__n); }
 247:	c5 fa 11 5e fc       	vmovss %xmm3,-0x4(%rsi)
	__ostream_insert(__out, __s,
 24c:	4c 39 f3             	cmp    %r14,%rbx
 24f:	74 25                	je     276 <_Z17measure_sqrt_timeILy6EEvv+0x276>
 251:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 255:	c5 fa 5a 03          	vcvtss2sd (%rbx),%xmm0,%xmm0
      { return __check_facet(_M_ctype).widen(__c); }
 259:	c5 f9 2e f0          	vucomisd %xmm0,%xmm6
 25d:	c5 c3 51 f8          	vsqrtsd %xmm0,%xmm7,%xmm7
 261:	0f 86 69 ff ff ff    	jbe    1d0 <_Z17measure_sqrt_timeILy6EEvv+0x1d0>
      if (!__f)
 267:	e8 00 00 00 00       	callq  26c <_Z17measure_sqrt_timeILy6EEvv+0x26c>
 26c:	e9 5f ff ff ff       	jmpq   1d0 <_Z17measure_sqrt_timeILy6EEvv+0x1d0>
	if (_M_widen_ok)
 271:	e8 00 00 00 00       	callq  276 <_Z17measure_sqrt_timeILy6EEvv+0x276>
 276:	ff 4d ac             	decl   -0x54(%rbp)
 279:	0f 85 44 ff ff ff    	jne    1c3 <_Z17measure_sqrt_timeILy6EEvv+0x1c3>
    { return flush(__os.put(__os.widen('\n'))); }
 27f:	e8 00 00 00 00       	callq  284 <_Z17measure_sqrt_timeILy6EEvv+0x284>
    { return __os.flush(); }
 284:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 28b:	9b c4 20 
	__ostream_insert(__out, __s,
 28e:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 292:	4c 29 f8             	sub    %r15,%rax
 295:	48 89 c1             	mov    %rax,%rcx
 298:	48 f7 ea             	imul   %rdx
 29b:	48 c1 f9 3f          	sar    $0x3f,%rcx
 29f:	48 c1 fa 07          	sar    $0x7,%rdx
 2a3:	48 29 ca             	sub    %rcx,%rdx
    std::cout << "generating " << (4 * N) << " random values..." << std::endl;
 2a6:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 2ad <_Z17measure_sqrt_timeILy6EEvv+0x2ad>
 2ad:	e8 00 00 00 00       	callq  2b2 <_Z17measure_sqrt_timeILy6EEvv+0x2b2>
 2b2:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 2b8:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 2f3 <_Z17measure_sqrt_timeILy6EEvv+0x2f3>
 2bf:	48 89 c6             	mov    %rax,%rsi
 2c2:	48 89 c1             	mov    %rax,%rcx
 2c5:	e8 00 00 00 00       	callq  2ca <_Z17measure_sqrt_timeILy6EEvv+0x2ca>
 2ca:	48 8b 06             	mov    (%rsi),%rax
 2cd:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      { return __check_facet(_M_ctype).widen(__c); }
 2d1:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 2d8:	00 
 2d9:	48 85 db             	test   %rbx,%rbx
 2dc:	74 93                	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
      if (!__f)
 2de:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 2e2:	0f 84 7b 0a 00 00    	je     d63 <_Z17measure_sqrt_timeILy6EEvv+0xd63>
 2e8:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 2ec:	48 89 f1             	mov    %rsi,%rcx
 2ef:	e8 00 00 00 00       	callq  2f4 <_Z17measure_sqrt_timeILy6EEvv+0x2f4>
    { return flush(__os.put(__os.widen('\n'))); }
 2f4:	48 89 c1             	mov    %rax,%rcx
 2f7:	e8 00 00 00 00       	callq  2fc <_Z17measure_sqrt_timeILy6EEvv+0x2fc>
 2fc:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 303 <_Z17measure_sqrt_timeILy6EEvv+0x303>
 303:	41 b8 37 00 00 00    	mov    $0x37,%r8d
 309:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 350 <_Z17measure_sqrt_timeILy6EEvv+0x350>
    { return __os.flush(); }
 310:	e8 00 00 00 00       	callq  315 <_Z17measure_sqrt_timeILy6EEvv+0x315>
       floats[i] = random_double();
 315:	49 8b 04 24          	mov    (%r12),%rax
 319:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 31d:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 324:	00 
 325:	48 85 db             	test   %rbx,%rbx
 328:	0f 84 43 ff ff ff    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
    for (int i = 0; i < 4 * N; i++) {
 32e:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
	__ostream_insert(__out, __s,
 332:	0f 84 05 09 00 00    	je     c3d <_Z17measure_sqrt_timeILy6EEvv+0xc3d>
 338:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 33c:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 343 <_Z17measure_sqrt_timeILy6EEvv+0x343>
 343:	e8 00 00 00 00       	callq  348 <_Z17measure_sqrt_timeILy6EEvv+0x348>
 348:	48 89 c1             	mov    %rax,%rcx
    { return flush(__os.put(__os.widen('\n'))); }
 34b:	e8 00 00 00 00       	callq  350 <_Z17measure_sqrt_timeILy6EEvv+0x350>
 350:	e8 00 00 00 00       	callq  355 <_Z17measure_sqrt_timeILy6EEvv+0x355>
      { return __check_facet(_M_ctype).widen(__c); }
 355:	ba e8 03 00 00       	mov    $0x3e8,%edx
 35a:	c5 f8 28 3d 50 01 00 	vmovaps 0x150(%rip),%xmm7        # 4b2 <_Z17measure_sqrt_timeILy6EEvv+0x4b2>
 361:	00 
      if (!__f)
 362:	c5 f8 28 35 60 01 00 	vmovaps 0x160(%rip),%xmm6        # 4ca <_Z17measure_sqrt_timeILy6EEvv+0x4ca>
 369:	00 
 36a:	48 89 c3             	mov    %rax,%rbx
 36d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 371:	31 c0                	xor    %eax,%eax
 373:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
 37a:	48 83 c0 10          	add    $0x10,%rax
 37e:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
    { return __os.flush(); }
 383:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
 387:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
       start = steady_clock::now();
 38b:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 38f:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 393:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 397:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 39b:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 39f:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 3a3:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 3a7:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 3ab:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 3af:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
          roots[i + k] = sqrt(floats[i + k]);
 3b3:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 3b7:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 3bb:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 3bf:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 3c3:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
 3c7:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
 3cb:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 3cf:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
 3d5:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
 3db:	75 96                	jne    373 <_Z17measure_sqrt_timeILy6EEvv+0x373>
 3dd:	ff ca                	dec    %edx
 3df:	75 90                	jne    371 <_Z17measure_sqrt_timeILy6EEvv+0x371>
 3e1:	e8 00 00 00 00       	callq  3e6 <_Z17measure_sqrt_timeILy6EEvv+0x3e6>
 3e6:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 3ed:	9b c4 20 
 3f0:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 3f4:	48 29 d8             	sub    %rbx,%rax
 3f7:	48 89 c1             	mov    %rax,%rcx
 3fa:	48 f7 ea             	imul   %rdx
 3fd:	48 c1 f9 3f          	sar    $0x3f,%rcx
 401:	48 c1 fa 07          	sar    $0x7,%rdx
 405:	48 29 ca             	sub    %rcx,%rdx
 408:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 40f <_Z17measure_sqrt_timeILy6EEvv+0x40f>
 40f:	e8 00 00 00 00       	callq  414 <_Z17measure_sqrt_timeILy6EEvv+0x414>
 414:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 41a:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 455 <_Z17measure_sqrt_timeILy6EEvv+0x455>
 421:	48 89 c6             	mov    %rax,%rsi
 424:	48 89 c1             	mov    %rax,%rcx
 427:	e8 00 00 00 00       	callq  42c <_Z17measure_sqrt_timeILy6EEvv+0x42c>
 42c:	48 8b 06             	mov    (%rsi),%rax
 42f:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      for (int i = 0; i < 4 * N; i += 4) {
 433:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 43a:	00 
          roots[i + k] = sqrt(floats[i + k]);
 43b:	48 85 db             	test   %rbx,%rbx
 43e:	0f 84 2d fe ff ff    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
 444:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 448:	0f 84 b3 08 00 00    	je     d01 <_Z17measure_sqrt_timeILy6EEvv+0xd01>
 44e:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 452:	48 89 f1             	mov    %rsi,%rcx
	__throw_bad_cast();
 455:	e8 00 00 00 00       	callq  45a <_Z17measure_sqrt_timeILy6EEvv+0x45a>
 45a:	48 89 c1             	mov    %rax,%rcx
 45d:	e8 00 00 00 00       	callq  462 <_Z17measure_sqrt_timeILy6EEvv+0x462>
    for (int j = 0; j < LOOP; j++) {
 462:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 469 <_Z17measure_sqrt_timeILy6EEvv+0x469>
       end = steady_clock::now();
 469:	41 b8 39 00 00 00    	mov    $0x39,%r8d
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 46f:	48 8d 15 78 00 00 00 	lea    0x78(%rip),%rdx        # 4ee <_Z17measure_sqrt_timeILy6EEvv+0x4ee>
 476:	e8 00 00 00 00       	callq  47b <_Z17measure_sqrt_timeILy6EEvv+0x47b>
 47b:	49 8b 04 24          	mov    (%r12),%rax
 47f:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 483:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
 48a:	00 
 48b:	48 85 db             	test   %rbx,%rbx
 48e:	0f 84 dd fd ff ff    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
      { return _M_insert(__n); }
 494:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 498:	0f 84 d0 07 00 00    	je     c6e <_Z17measure_sqrt_timeILy6EEvv+0xc6e>
	__ostream_insert(__out, __s,
 49e:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 4a2:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 4a9 <_Z17measure_sqrt_timeILy6EEvv+0x4a9>
      { return _M_insert(__n); }
 4a9:	e8 00 00 00 00       	callq  4ae <_Z17measure_sqrt_timeILy6EEvv+0x4ae>
	__ostream_insert(__out, __s,
 4ae:	48 89 c1             	mov    %rax,%rcx
 4b1:	e8 00 00 00 00       	callq  4b6 <_Z17measure_sqrt_timeILy6EEvv+0x4b6>
    { return flush(__os.put(__os.widen('\n'))); }
 4b6:	e8 00 00 00 00       	callq  4bb <_Z17measure_sqrt_timeILy6EEvv+0x4bb>
      { return __check_facet(_M_ctype).widen(__c); }
 4bb:	ba e8 03 00 00       	mov    $0x3e8,%edx
 4c0:	48 89 c6             	mov    %rax,%rsi
      if (!__f)
 4c3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 4c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 4ce:	00 00 
 4d0:	4c 89 e8             	mov    %r13,%rax
 4d3:	48 89 fb             	mov    %rdi,%rbx
 4d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 4dd:	00 00 00 
    { return __os.flush(); }
 4e0:	c5 f8 28 20          	vmovaps (%rax),%xmm4
 4e4:	c5 f8 28 40 20       	vmovaps 0x20(%rax),%xmm0
	__ostream_insert(__out, __s,
 4e9:	48 83 c3 40          	add    $0x40,%rbx
 4ed:	48 83 c0 40          	add    $0x40,%rax
 4f1:	c5 d8 c6 50 d0 88    	vshufps $0x88,-0x30(%rax),%xmm4,%xmm2
 4f7:	c5 f8 c6 48 f0 88    	vshufps $0x88,-0x10(%rax),%xmm0,%xmm1
 4fd:	c5 d8 c6 60 d0 dd    	vshufps $0xdd,-0x30(%rax),%xmm4,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 503:	c5 f8 c6 40 f0 dd    	vshufps $0xdd,-0x10(%rax),%xmm0,%xmm0
 509:	c5 e8 c6 d9 88       	vshufps $0x88,%xmm1,%xmm2,%xmm3
      if (!__f)
 50e:	c5 e8 c6 c9 dd       	vshufps $0xdd,%xmm1,%xmm2,%xmm1
 513:	c5 d8 c6 d0 88       	vshufps $0x88,%xmm0,%xmm4,%xmm2
 518:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
 51d:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
 522:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
    { return flush(__os.put(__os.widen('\n'))); }
 526:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 52a:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 52e:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
    { return __os.flush(); }
 532:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 536:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
       start = steady_clock::now();
 53a:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 53e:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 542:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 546:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 54a:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 54e:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 552:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 556:	c5 e0 5e e5          	vdivps %xmm5,%xmm3,%xmm4
 55a:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 55e:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 562:	c5 e0 5e dc          	vdivps %xmm4,%xmm3,%xmm3
 566:	c5 e0 58 dc          	vaddps %xmm4,%xmm3,%xmm3
 56a:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
 56f:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 573:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
    root = 0.5 * (root + (* a / root));
 577:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
 57b:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 57f:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 583:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 587:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 58b:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
        roots[i] = sqrt1<LOOPS>(floats + i);
 58f:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 593:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 597:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 59b:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
    for (int j = 0; j < LOOP; j++) {
 59f:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
       end = steady_clock::now();
 5a3:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 5a7:	c5 e8 5e e5          	vdivps %xmm5,%xmm2,%xmm4
 5ab:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5af:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 5b3:	c5 e8 5e d4          	vdivps %xmm4,%xmm2,%xmm2
 5b7:	c5 e8 58 d4          	vaddps %xmm4,%xmm2,%xmm2
 5bb:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
 5c0:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 5c4:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
      { return _M_insert(__n); }
 5c8:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 5cc:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5d0:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
	__ostream_insert(__out, __s,
 5d4:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
 5d8:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5dc:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      { return _M_insert(__n); }
 5e0:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
	__ostream_insert(__out, __s,
 5e4:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5e8:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
    { return flush(__os.put(__os.widen('\n'))); }
 5ec:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 5f0:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 5f4:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 5f8:	c5 f0 5e e5          	vdivps %xmm5,%xmm1,%xmm4
      if (!__f)
 5fc:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 600:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 604:	c5 f0 5e cc          	vdivps %xmm4,%xmm1,%xmm1
 608:	c5 f0 58 cc          	vaddps %xmm4,%xmm1,%xmm1
 60c:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
 611:	c5 d9 fe ef          	vpaddd %xmm7,%xmm4,%xmm5
 615:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
    { return __os.flush(); }
 619:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 61d:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
	__ostream_insert(__out, __s,
 621:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 625:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 629:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 62d:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
 631:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 635:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 639:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      { return __check_facet(_M_ctype).widen(__c); }
 63d:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 641:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 645:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      if (!__f)
 649:	c5 f8 5e e5          	vdivps %xmm5,%xmm0,%xmm4
 64d:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
 651:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 655:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
 659:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
 65d:	c5 e0 14 e1          	vunpcklps %xmm1,%xmm3,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
 661:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
 665:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 669:	c5 e8 14 d8          	vunpcklps %xmm0,%xmm2,%xmm3
    { return __os.flush(); }
 66d:	c5 e8 15 d0          	vunpckhps %xmm0,%xmm2,%xmm2
 671:	c5 d8 14 c3          	vunpcklps %xmm3,%xmm4,%xmm0
       start = steady_clock::now();
 675:	c5 d8 15 e3          	vunpckhps %xmm3,%xmm4,%xmm4
 679:	c5 f8 29 43 c0       	vmovaps %xmm0,-0x40(%rbx)
 67e:	c5 f0 14 c2          	vunpcklps %xmm2,%xmm1,%xmm0
 682:	c5 f0 15 ca          	vunpckhps %xmm2,%xmm1,%xmm1
 686:	c5 f8 29 63 d0       	vmovaps %xmm4,-0x30(%rbx)
 68b:	c5 f8 29 43 e0       	vmovaps %xmm0,-0x20(%rbx)
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 690:	c5 f8 29 4b f0       	vmovaps %xmm1,-0x10(%rbx)
 695:	49 39 dd             	cmp    %rbx,%r13
 698:	0f 85 42 fe ff ff    	jne    4e0 <_Z17measure_sqrt_timeILy6EEvv+0x4e0>
 69e:	ff ca                	dec    %edx
 6a0:	0f 85 2a fe ff ff    	jne    4d0 <_Z17measure_sqrt_timeILy6EEvv+0x4d0>
 6a6:	e8 00 00 00 00       	callq  6ab <_Z17measure_sqrt_timeILy6EEvv+0x6ab>
 6ab:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 6b2:	9b c4 20 
 6b5:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 6b9:	48 29 f0             	sub    %rsi,%rax
 6bc:	48 89 c1             	mov    %rax,%rcx
 6bf:	48 f7 ea             	imul   %rdx
 6c2:	48 c1 f9 3f          	sar    $0x3f,%rcx
 6c6:	48 c1 fa 07          	sar    $0x7,%rdx
 6ca:	48 29 ca             	sub    %rcx,%rdx
 6cd:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 6d4 <_Z17measure_sqrt_timeILy6EEvv+0x6d4>
 6d4:	e8 00 00 00 00       	callq  6d9 <_Z17measure_sqrt_timeILy6EEvv+0x6d9>
    root = 0.5 * (root + (* a / root));
 6d9:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 6df:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 71a <_Z17measure_sqrt_timeILy6EEvv+0x71a>
 6e6:	49 89 c6             	mov    %rax,%r14
 6e9:	48 89 c1             	mov    %rax,%rcx
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 6ec:	e8 00 00 00 00       	callq  6f1 <_Z17measure_sqrt_timeILy6EEvv+0x6f1>
 6f1:	49 8b 06             	mov    (%r14),%rax
    root = 0.5 * (root + (* a / root));
 6f4:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 6f8:	49 8b b4 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%rsi
 6ff:	00 
 700:	48 85 f6             	test   %rsi,%rsi
 703:	0f 84 68 fb ff ff    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
 709:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 70d:	0f 84 1f 06 00 00    	je     d32 <_Z17measure_sqrt_timeILy6EEvv+0xd32>
 713:	0f be 56 43          	movsbl 0x43(%rsi),%edx
    root = 0.5 * (root + (* a / root));
 717:	4c 89 f1             	mov    %r14,%rcx
 71a:	e8 00 00 00 00       	callq  71f <_Z17measure_sqrt_timeILy6EEvv+0x71f>
 71f:	48 89 c1             	mov    %rax,%rcx
 722:	e8 00 00 00 00       	callq  727 <_Z17measure_sqrt_timeILy6EEvv+0x727>
 727:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 72e <_Z17measure_sqrt_timeILy6EEvv+0x72e>
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 72e:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
 734:	48 8d 15 b8 00 00 00 	lea    0xb8(%rip),%rdx        # 7f3 <_Z17measure_sqrt_timeILy6EEvv+0x7f3>
    root = 0.5 * (root + (* a / root));
 73b:	e8 00 00 00 00       	callq  740 <_Z17measure_sqrt_timeILy6EEvv+0x740>
 740:	49 8b 04 24          	mov    (%r12),%rax
 744:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 748:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
 74f:	00 
          roots[i + k] = sqrt1<LOOPS>(floats + i + k);
 750:	48 85 f6             	test   %rsi,%rsi
 753:	0f 84 18 fb ff ff    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
 759:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 75d:	0f 84 3c 05 00 00    	je     c9f <_Z17measure_sqrt_timeILy6EEvv+0xc9f>
 763:	0f be 56 43          	movsbl 0x43(%rsi),%edx
 767:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 76e <_Z17measure_sqrt_timeILy6EEvv+0x76e>
 76e:	e8 00 00 00 00       	callq  773 <_Z17measure_sqrt_timeILy6EEvv+0x773>
 773:	48 89 c1             	mov    %rax,%rcx
 776:	e8 00 00 00 00       	callq  77b <_Z17measure_sqrt_timeILy6EEvv+0x77b>
 77b:	e8 00 00 00 00       	callq  780 <_Z17measure_sqrt_timeILy6EEvv+0x780>
 780:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
 785:	48 89 c6             	mov    %rax,%rsi
 788:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 78c:	0f 1f 40 00          	nopl   0x0(%rax)
    for (int j = 0; j < LOOP; j++) {
 790:	4c 89 ea             	mov    %r13,%rdx
 793:	48 89 f8             	mov    %rdi,%rax
       end = steady_clock::now();
 796:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 79d:	00 00 00 
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 7a0:	c5 f8 28 22          	vmovaps (%rdx),%xmm4
 7a4:	c5 f8 28 42 20       	vmovaps 0x20(%rdx),%xmm0
 7a9:	48 83 c0 40          	add    $0x40,%rax
 7ad:	48 83 c2 40          	add    $0x40,%rdx
 7b1:	c5 f8 c6 4a f0 88    	vshufps $0x88,-0x10(%rdx),%xmm0,%xmm1
 7b7:	c5 d8 c6 5a d0 88    	vshufps $0x88,-0x30(%rdx),%xmm4,%xmm3
      { return _M_insert(__n); }
 7bd:	c5 f8 c6 42 f0 dd    	vshufps $0xdd,-0x10(%rdx),%xmm0,%xmm0
 7c3:	c5 d8 c6 62 d0 dd    	vshufps $0xdd,-0x30(%rdx),%xmm4,%xmm4
	__ostream_insert(__out, __s,
 7c9:	c5 e0 c6 d1 88       	vshufps $0x88,%xmm1,%xmm3,%xmm2
 7ce:	c5 e0 c6 d9 dd       	vshufps $0xdd,%xmm1,%xmm3,%xmm3
 7d3:	c5 d8 c6 c8 88       	vshufps $0x88,%xmm0,%xmm4,%xmm1
      { return _M_insert(__n); }
 7d8:	c5 d8 c6 c0 dd       	vshufps $0xdd,%xmm0,%xmm4,%xmm0
	__ostream_insert(__out, __s,
 7dd:	c5 d9 72 e2 01       	vpsrad $0x1,%xmm2,%xmm4
    { return flush(__os.put(__os.widen('\n'))); }
 7e2:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 7e6:	c5 e8 5e ec          	vdivps %xmm4,%xmm2,%xmm5
 7ea:	c5 d0 58 e4          	vaddps %xmm4,%xmm5,%xmm4
 7ee:	c5 d8 59 ee          	vmulps %xmm6,%xmm4,%xmm5
      if (!__f)
 7f2:	c5 d9 72 e1 01       	vpsrad $0x1,%xmm1,%xmm4
 7f7:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 7fb:	c5 70 5e cc          	vdivps %xmm4,%xmm1,%xmm9
 7ff:	c5 b0 58 e4          	vaddps %xmm4,%xmm9,%xmm4
 803:	c5 58 59 ce          	vmulps %xmm6,%xmm4,%xmm9
 807:	c5 d9 72 e3 01       	vpsrad $0x1,%xmm3,%xmm4
 80c:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
    { return __os.flush(); }
 810:	c5 60 5e c4          	vdivps %xmm4,%xmm3,%xmm8
 814:	c5 b8 58 e4          	vaddps %xmm4,%xmm8,%xmm4
	__ostream_insert(__out, __s,
 818:	c5 58 59 c6          	vmulps %xmm6,%xmm4,%xmm8
 81c:	c5 d9 72 e0 01       	vpsrad $0x1,%xmm0,%xmm4
 821:	c5 d9 fe e7          	vpaddd %xmm7,%xmm4,%xmm4
 825:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
 829:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 82d:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
    { return flush(__os.put(__os.widen('\n'))); }
 831:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
      { return __check_facet(_M_ctype).widen(__c); }
 835:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
 839:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
 83e:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
      if (!__f)
 842:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 847:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
 84c:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
 850:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 855:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
 859:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
 85d:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 861:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
    { return __os.flush(); }
 865:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 869:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
       start = steady_clock::now();
 86d:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
 872:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
 876:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 87b:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
 880:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
    initial[0] = (1 << 29) + (ai[0] >> 1) - (1 << 22) - 0x4C000;
 884:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 889:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
 88d:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
 891:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
 895:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
 899:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
 89d:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
 8a1:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
 8a6:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
 8aa:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
 8af:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
 8b4:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
 8b8:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
 8bd:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
 8c1:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
 8c5:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8c9:	c5 68 5e d5          	vdivps %xmm5,%xmm2,%xmm10
 8cd:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
    initial[1] = (1 << 29) + (ai[1] >> 1) - (1 << 22) - 0x4C000;
 8d1:	c5 a8 58 ed          	vaddps %xmm5,%xmm10,%xmm5
 8d5:	c4 41 70 5e d1       	vdivps %xmm9,%xmm1,%xmm10
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8da:	c5 d0 59 ee          	vmulps %xmm6,%xmm5,%xmm5
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8de:	c4 41 28 58 c9       	vaddps %xmm9,%xmm10,%xmm9
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8e3:	c4 41 60 5e d0       	vdivps %xmm8,%xmm3,%xmm10
    initial[2] = (1 << 29) + (ai[2] >> 1) - (1 << 22) - 0x4C000;
 8e8:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
 8ec:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 8f1:	c5 78 5e d4          	vdivps %xmm4,%xmm0,%xmm10
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 8f5:	c5 38 59 c6          	vmulps %xmm6,%xmm8,%xmm8
        root[0] = 0.5 * ( root[0] + (a[0] / root[0]));
 8f9:	c5 e8 5e d5          	vdivps %xmm5,%xmm2,%xmm2
 8fd:	c5 a8 58 e4          	vaddps %xmm4,%xmm10,%xmm4
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 901:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
    initial[3] = (1 << 29) + (ai[3] >> 1) - (1 << 22) - 0x4C000;
 905:	c5 e8 58 d5          	vaddps %xmm5,%xmm2,%xmm2
 909:	c5 f8 5e c4          	vdivps %xmm4,%xmm0,%xmm0
 90d:	c5 e8 59 ee          	vmulps %xmm6,%xmm2,%xmm5
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 911:	c4 c1 70 5e d1       	vdivps %xmm9,%xmm1,%xmm2
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 916:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 91a:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
        root[1] = 0.5 * ( root[1] + (a[1] / root[1]));
 91e:	c4 c1 60 5e c8       	vdivps %xmm8,%xmm3,%xmm1
 923:	c4 c1 68 58 d1       	vaddps %xmm9,%xmm2,%xmm2
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 928:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 92c:	c5 e8 14 e0          	vunpcklps %xmm0,%xmm2,%xmm4
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 930:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
 934:	c4 c1 70 58 c8       	vaddps %xmm8,%xmm1,%xmm1
        root[2] = 0.5 * ( root[2] + (a[2] / root[2]));
 939:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 93d:	c5 d0 14 d9          	vunpcklps %xmm1,%xmm5,%xmm3
        root[3] = 0.5 * ( root[3] + (a[3] / root[3]));
 941:	c5 d0 15 c9          	vunpckhps %xmm1,%xmm5,%xmm1
 945:	c5 e0 14 d4          	vunpcklps %xmm4,%xmm3,%xmm2
 949:	c5 e0 15 dc          	vunpckhps %xmm4,%xmm3,%xmm3
 94d:	c5 f8 29 50 c0       	vmovaps %xmm2,-0x40(%rax)
 952:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
 956:	c5 f0 15 c8          	vunpckhps %xmm0,%xmm1,%xmm1
 95a:	c5 f8 29 58 d0       	vmovaps %xmm3,-0x30(%rax)
 95f:	c5 f8 29 50 e0       	vmovaps %xmm2,-0x20(%rax)
 964:	c5 f8 29 48 f0       	vmovaps %xmm1,-0x10(%rax)
 969:	48 39 d8             	cmp    %rbx,%rax
 96c:	0f 85 2e fe ff ff    	jne    7a0 <_Z17measure_sqrt_timeILy6EEvv+0x7a0>
 972:	ff c9                	dec    %ecx
 974:	0f 85 16 fe ff ff    	jne    790 <_Z17measure_sqrt_timeILy6EEvv+0x790>
 97a:	e8 00 00 00 00       	callq  97f <_Z17measure_sqrt_timeILy6EEvv+0x97f>
 97f:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 986:	9b c4 20 
    for (int j = 0; j < LOOP; j++) {
 989:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
       end = steady_clock::now();
 98d:	48 29 f0             	sub    %rsi,%rax
    std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 990:	48 89 c1             	mov    %rax,%rcx
 993:	48 f7 ea             	imul   %rdx
 996:	48 c1 f9 3f          	sar    $0x3f,%rcx
 99a:	48 c1 fa 07          	sar    $0x7,%rdx
 99e:	48 29 ca             	sub    %rcx,%rdx
 9a1:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 9a8 <_Z17measure_sqrt_timeILy6EEvv+0x9a8>
 9a8:	e8 00 00 00 00       	callq  9ad <_Z17measure_sqrt_timeILy6EEvv+0x9ad>
 9ad:	41 b8 05 00 00 00    	mov    $0x5,%r8d
      { return _M_insert(__n); }
 9b3:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # 9ee <_Z17measure_sqrt_timeILy6EEvv+0x9ee>
 9ba:	48 89 c6             	mov    %rax,%rsi
 9bd:	48 89 c1             	mov    %rax,%rcx
	__ostream_insert(__out, __s,
 9c0:	e8 00 00 00 00       	callq  9c5 <_Z17measure_sqrt_timeILy6EEvv+0x9c5>
 9c5:	48 8b 06             	mov    (%rsi),%rax
 9c8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
      { return _M_insert(__n); }
 9cc:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 9d3:	00 
	__ostream_insert(__out, __s,
 9d4:	48 85 db             	test   %rbx,%rbx
    { return flush(__os.put(__os.widen('\n'))); }
 9d7:	0f 84 94 f8 ff ff    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
      { return __check_facet(_M_ctype).widen(__c); }
 9dd:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
 9e1:	0f 84 e9 02 00 00    	je     cd0 <_Z17measure_sqrt_timeILy6EEvv+0xcd0>
      if (!__f)
 9e7:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 9eb:	48 89 f1             	mov    %rsi,%rcx
 9ee:	e8 00 00 00 00       	callq  9f3 <_Z17measure_sqrt_timeILy6EEvv+0x9f3>
 9f3:	48 89 c1             	mov    %rax,%rcx
 9f6:	e8 00 00 00 00       	callq  9fb <_Z17measure_sqrt_timeILy6EEvv+0x9fb>
 9fb:	e8 00 00 00 00       	callq  a00 <_Z17measure_sqrt_timeILy6EEvv+0xa00>
 a00:	ba e8 03 00 00       	mov    $0x3e8,%edx
    { return __os.flush(); }
 a05:	48 89 c6             	mov    %rax,%rsi
 a08:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
       start = steady_clock::now();
 a0c:	0f 1f 40 00          	nopl   0x0(%rax)
 a10:	31 c0                	xor    %eax,%eax
 a12:	c4 c1 78 28 44 05 00 	vmovaps 0x0(%r13,%rax,1),%xmm0
 a19:	48 83 c0 10          	add    $0x10,%rax
 a1d:	c5 f1 72 e0 01       	vpsrad $0x1,%xmm0,%xmm1
  * initial = (1 << 29) + (* ai >> 1) - (1 << 22) - 0x4C000;
 a22:	c5 f1 fe d7          	vpaddd %xmm7,%xmm1,%xmm2
 a26:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 a2a:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
 a2e:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 a32:	c5 f8 5e d1          	vdivps %xmm1,%xmm0,%xmm2
    * root = 0.5 * (* root + (* a / * root));
 a36:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
 a3a:	c5 e8 59 ce          	vmulps %xmm6,%xmm2,%xmm1
 a3e:	c5 f8 5e d1          	vdivps %xmm1,%xmm0,%xmm2
 a42:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
 a46:	c5 e8 59 d6          	vmulps %xmm6,%xmm2,%xmm2
 a4a:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
 a4e:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
      for (int i = 0; i < 4 * N; i += 4) {
 a52:	c5 f0 59 d6          	vmulps %xmm6,%xmm1,%xmm2
 a56:	c5 f8 5e ca          	vdivps %xmm2,%xmm0,%xmm1
    for (int j = 0; j < LOOP; j++) {
 a5a:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
       end = steady_clock::now();
 a5e:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
 a62:	c5 f8 5e c1          	vdivps %xmm1,%xmm0,%xmm0
	__ostream_insert(__out, __s,
 a66:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
 a6a:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
 a6e:	c5 f8 29 44 38 f0    	vmovaps %xmm0,-0x10(%rax,%rdi,1)
 a74:	48 3d 00 35 0c 00    	cmp    $0xc3500,%rax
 a7a:	75 96                	jne    a12 <_Z17measure_sqrt_timeILy6EEvv+0xa12>
 a7c:	ff ca                	dec    %edx
 a7e:	75 90                	jne    a10 <_Z17measure_sqrt_timeILy6EEvv+0xa10>
 a80:	e8 00 00 00 00       	callq  a85 <_Z17measure_sqrt_timeILy6EEvv+0xa85>
 a85:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # a8c <_Z17measure_sqrt_timeILy6EEvv+0xa8c>
      { return __check_facet(_M_ctype).widen(__c); }
 a8c:	41 b8 34 00 00 00    	mov    $0x34,%r8d
 a92:	48 8d 15 e8 00 00 00 	lea    0xe8(%rip),%rdx        # b81 <_Z17measure_sqrt_timeILy6EEvv+0xb81>
      if (!__f)
 a99:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 a9d:	48 29 f0             	sub    %rsi,%rax
 aa0:	48 89 c3             	mov    %rax,%rbx
 aa3:	e8 00 00 00 00       	callq  aa8 <_Z17measure_sqrt_timeILy6EEvv+0xaa8>
 aa8:	49 8b 04 24          	mov    (%r12),%rax
    { return flush(__os.put(__os.widen('\n'))); }
 aac:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 ab0:	49 8b b4 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rsi
 ab7:	00 
    { return __os.flush(); }
 ab8:	48 85 f6             	test   %rsi,%rsi
 abb:	0f 84 b0 f7 ff ff    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
    std::cout << time.time_clock().count() / LOOP  << " [ns]" << std::endl;
 ac1:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
 ac5:	0f 84 fa 02 00 00    	je     dc5 <_Z17measure_sqrt_timeILy6EEvv+0xdc5>
 acb:	0f be 56 43          	movsbl 0x43(%rsi),%edx
      { return _M_insert(__n); }
 acf:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # ad6 <_Z17measure_sqrt_timeILy6EEvv+0xad6>
 ad6:	e8 00 00 00 00       	callq  adb <_Z17measure_sqrt_timeILy6EEvv+0xadb>
 adb:	48 89 c1             	mov    %rax,%rcx
 ade:	e8 00 00 00 00       	callq  ae3 <_Z17measure_sqrt_timeILy6EEvv+0xae3>
 ae3:	48 89 d8             	mov    %rbx,%rax
 ae6:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 aed:	9b c4 20 
	__ostream_insert(__out, __s,
 af0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # af7 <_Z17measure_sqrt_timeILy6EEvv+0xaf7>
 af7:	48 c1 fb 3f          	sar    $0x3f,%rbx
 afb:	48 f7 ea             	imul   %rdx
 afe:	48 c1 fa 07          	sar    $0x7,%rdx
      { return __check_facet(_M_ctype).widen(__c); }
 b02:	48 29 da             	sub    %rbx,%rdx
 b05:	e8 00 00 00 00       	callq  b0a <_Z17measure_sqrt_timeILy6EEvv+0xb0a>
 b0a:	41 b8 05 00 00 00    	mov    $0x5,%r8d
      if (!__f)
 b10:	48 8d 15 34 00 00 00 	lea    0x34(%rip),%rdx        # b4b <_Z17measure_sqrt_timeILy6EEvv+0xb4b>
 b17:	48 89 c6             	mov    %rax,%rsi
 b1a:	48 89 c1             	mov    %rax,%rcx
 b1d:	e8 00 00 00 00       	callq  b22 <_Z17measure_sqrt_timeILy6EEvv+0xb22>
 b22:	48 8b 06             	mov    (%rsi),%rax
    { return flush(__os.put(__os.widen('\n'))); }
 b25:	48 8b 40 e8          	mov    -0x18(%rax),%rax
 b29:	48 8b 9c 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rbx
 b30:	00 
}
 b31:	48 85 db             	test   %rbx,%rbx
 b34:	0f 84 37 f7 ff ff    	je     271 <_Z17measure_sqrt_timeILy6EEvv+0x271>
 b3a:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    { return __os.flush(); }
 b3e:	0f 84 50 02 00 00    	je     d94 <_Z17measure_sqrt_timeILy6EEvv+0xd94>
 b44:	0f be 53 43          	movsbl 0x43(%rbx),%edx
 b48:	48 89 f1             	mov    %rsi,%rcx
 b4b:	e8 00 00 00 00       	callq  b50 <_Z17measure_sqrt_timeILy6EEvv+0xb50>
 b50:	90                   	nop
 b51:	c5 f8 28 75 d0       	vmovaps -0x30(%rbp),%xmm6
 b56:	c5 f8 28 7d e0       	vmovaps -0x20(%rbp),%xmm7
 b5b:	c5 78 28 45 f0       	vmovaps -0x10(%rbp),%xmm8
          roots[i + k] = sqrt(floats[i + k]);
 b60:	48 89 c1             	mov    %rax,%rcx
 b63:	c5 78 28 4d 00       	vmovaps 0x0(%rbp),%xmm9
 b68:	c5 78 28 55 10       	vmovaps 0x10(%rbp),%xmm10
 b6d:	48 8d 65 28          	lea    0x28(%rbp),%rsp
 b71:	5b                   	pop    %rbx
 b72:	5e                   	pop    %rsi
 b73:	5f                   	pop    %rdi
 b74:	41 5c                	pop    %r12
 b76:	41 5d                	pop    %r13
 b78:	41 5e                	pop    %r14
 b7a:	41 5f                	pop    %r15
 b7c:	5d                   	pop    %rbp
 b7d:	e9 00 00 00 00       	jmpq   b82 <_Z17measure_sqrt_timeILy6EEvv+0xb82>
	this->_M_widen_init();
 b82:	e8 00 00 00 00       	callq  b87 <_Z17measure_sqrt_timeILy6EEvv+0xb87>
	return this->do_widen(__c);
 b87:	e9 ab f6 ff ff       	jmpq   237 <_Z17measure_sqrt_timeILy6EEvv+0x237>
 b8c:	0f 1f 40 00          	nopl   0x0(%rax)
 b90:	e8 00 00 00 00       	callq  b95 <_Z17measure_sqrt_timeILy6EEvv+0xb95>
 b95:	e9 7d f6 ff ff       	jmpq   217 <_Z17measure_sqrt_timeILy6EEvv+0x217>
 b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ba0:	e8 00 00 00 00       	callq  ba5 <_Z17measure_sqrt_timeILy6EEvv+0xba5>
 ba5:	e9 49 f6 ff ff       	jmpq   1f3 <_Z17measure_sqrt_timeILy6EEvv+0x1f3>
 baa:	48 89 d9             	mov    %rbx,%rcx
 bad:	e8 00 00 00 00       	callq  bb2 <_Z17measure_sqrt_timeILy6EEvv+0xbb2>
	this->_M_widen_init();
 bb2:	48 8b 03             	mov    (%rbx),%rax
 bb5:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # bbc <_Z17measure_sqrt_timeILy6EEvv+0xbbc>
	return this->do_widen(__c);
 bbc:	ba 0a 00 00 00       	mov    $0xa,%edx
 bc1:	48 8b 40 30          	mov    0x30(%rax),%rax
 bc5:	48 39 c8             	cmp    %rcx,%rax
 bc8:	0f 84 46 f5 ff ff    	je     114 <_Z17measure_sqrt_timeILy6EEvv+0x114>
 bce:	48 89 d9             	mov    %rbx,%rcx
 bd1:	ff d0                	callq  *%rax
 bd3:	0f be d0             	movsbl %al,%edx
 bd6:	e9 39 f5 ff ff       	jmpq   114 <_Z17measure_sqrt_timeILy6EEvv+0x114>
 bdb:	48 89 d9             	mov    %rbx,%rcx
 bde:	e8 00 00 00 00       	callq  be3 <_Z17measure_sqrt_timeILy6EEvv+0xbe3>
	this->_M_widen_init();
 be3:	48 8b 03             	mov    (%rbx),%rax
 be6:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # bed <_Z17measure_sqrt_timeILy6EEvv+0xbed>
	return this->do_widen(__c);
 bed:	ba 0a 00 00 00       	mov    $0xa,%edx
 bf2:	48 8b 40 30          	mov    0x30(%rax),%rax
 bf6:	48 39 c8             	cmp    %rcx,%rax
 bf9:	0f 84 9d f4 ff ff    	je     9c <_Z17measure_sqrt_timeILy6EEvv+0x9c>
 bff:	48 89 d9             	mov    %rbx,%rcx
 c02:	ff d0                	callq  *%rax
 c04:	0f be d0             	movsbl %al,%edx
 c07:	e9 90 f4 ff ff       	jmpq   9c <_Z17measure_sqrt_timeILy6EEvv+0x9c>
 c0c:	48 89 d9             	mov    %rbx,%rcx
 c0f:	e8 00 00 00 00       	callq  c14 <_Z17measure_sqrt_timeILy6EEvv+0xc14>
	this->_M_widen_init();
 c14:	48 8b 03             	mov    (%rbx),%rax
 c17:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c1e <_Z17measure_sqrt_timeILy6EEvv+0xc1e>
	return this->do_widen(__c);
 c1e:	ba 0a 00 00 00       	mov    $0xa,%edx
 c23:	48 8b 40 30          	mov    0x30(%rax),%rax
 c27:	48 39 c8             	cmp    %rcx,%rax
 c2a:	0f 84 68 f5 ff ff    	je     198 <_Z17measure_sqrt_timeILy6EEvv+0x198>
 c30:	48 89 d9             	mov    %rbx,%rcx
 c33:	ff d0                	callq  *%rax
 c35:	0f be d0             	movsbl %al,%edx
 c38:	e9 5b f5 ff ff       	jmpq   198 <_Z17measure_sqrt_timeILy6EEvv+0x198>
 c3d:	48 89 d9             	mov    %rbx,%rcx
 c40:	e8 00 00 00 00       	callq  c45 <_Z17measure_sqrt_timeILy6EEvv+0xc45>
	this->_M_widen_init();
 c45:	48 8b 03             	mov    (%rbx),%rax
 c48:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c4f <_Z17measure_sqrt_timeILy6EEvv+0xc4f>
	return this->do_widen(__c);
 c4f:	ba 0a 00 00 00       	mov    $0xa,%edx
 c54:	48 8b 40 30          	mov    0x30(%rax),%rax
 c58:	48 39 c8             	cmp    %rcx,%rax
 c5b:	0f 84 db f6 ff ff    	je     33c <_Z17measure_sqrt_timeILy6EEvv+0x33c>
 c61:	48 89 d9             	mov    %rbx,%rcx
 c64:	ff d0                	callq  *%rax
 c66:	0f be d0             	movsbl %al,%edx
 c69:	e9 ce f6 ff ff       	jmpq   33c <_Z17measure_sqrt_timeILy6EEvv+0x33c>
 c6e:	48 89 d9             	mov    %rbx,%rcx
 c71:	e8 00 00 00 00       	callq  c76 <_Z17measure_sqrt_timeILy6EEvv+0xc76>
	this->_M_widen_init();
 c76:	48 8b 03             	mov    (%rbx),%rax
 c79:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # c80 <_Z17measure_sqrt_timeILy6EEvv+0xc80>
	return this->do_widen(__c);
 c80:	ba 0a 00 00 00       	mov    $0xa,%edx
 c85:	48 8b 40 30          	mov    0x30(%rax),%rax
 c89:	48 39 c8             	cmp    %rcx,%rax
 c8c:	0f 84 10 f8 ff ff    	je     4a2 <_Z17measure_sqrt_timeILy6EEvv+0x4a2>
 c92:	48 89 d9             	mov    %rbx,%rcx
 c95:	ff d0                	callq  *%rax
 c97:	0f be d0             	movsbl %al,%edx
 c9a:	e9 03 f8 ff ff       	jmpq   4a2 <_Z17measure_sqrt_timeILy6EEvv+0x4a2>
 c9f:	48 89 f1             	mov    %rsi,%rcx
 ca2:	e8 00 00 00 00       	callq  ca7 <_Z17measure_sqrt_timeILy6EEvv+0xca7>
	this->_M_widen_init();
 ca7:	48 8b 06             	mov    (%rsi),%rax
 caa:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # cb1 <_Z17measure_sqrt_timeILy6EEvv+0xcb1>
	return this->do_widen(__c);
 cb1:	ba 0a 00 00 00       	mov    $0xa,%edx
 cb6:	48 8b 40 30          	mov    0x30(%rax),%rax
 cba:	48 39 c8             	cmp    %rcx,%rax
 cbd:	0f 84 a4 fa ff ff    	je     767 <_Z17measure_sqrt_timeILy6EEvv+0x767>
 cc3:	48 89 f1             	mov    %rsi,%rcx
 cc6:	ff d0                	callq  *%rax
 cc8:	0f be d0             	movsbl %al,%edx
 ccb:	e9 97 fa ff ff       	jmpq   767 <_Z17measure_sqrt_timeILy6EEvv+0x767>
 cd0:	48 89 d9             	mov    %rbx,%rcx
 cd3:	e8 00 00 00 00       	callq  cd8 <_Z17measure_sqrt_timeILy6EEvv+0xcd8>
	this->_M_widen_init();
 cd8:	48 8b 03             	mov    (%rbx),%rax
 cdb:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ce2 <_Z17measure_sqrt_timeILy6EEvv+0xce2>
	return this->do_widen(__c);
 ce2:	ba 0a 00 00 00       	mov    $0xa,%edx
 ce7:	48 8b 40 30          	mov    0x30(%rax),%rax
 ceb:	48 39 c8             	cmp    %rcx,%rax
 cee:	0f 84 f7 fc ff ff    	je     9eb <_Z17measure_sqrt_timeILy6EEvv+0x9eb>
 cf4:	48 89 d9             	mov    %rbx,%rcx
 cf7:	ff d0                	callq  *%rax
 cf9:	0f be d0             	movsbl %al,%edx
 cfc:	e9 ea fc ff ff       	jmpq   9eb <_Z17measure_sqrt_timeILy6EEvv+0x9eb>
 d01:	48 89 d9             	mov    %rbx,%rcx
 d04:	e8 00 00 00 00       	callq  d09 <_Z17measure_sqrt_timeILy6EEvv+0xd09>
	this->_M_widen_init();
 d09:	48 8b 03             	mov    (%rbx),%rax
 d0c:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # d13 <_Z17measure_sqrt_timeILy6EEvv+0xd13>
	return this->do_widen(__c);
 d13:	ba 0a 00 00 00       	mov    $0xa,%edx
 d18:	48 8b 40 30          	mov    0x30(%rax),%rax
 d1c:	48 39 c8             	cmp    %rcx,%rax
 d1f:	0f 84 2d f7 ff ff    	je     452 <_Z17measure_sqrt_timeILy6EEvv+0x452>
 d25:	48 89 d9             	mov    %rbx,%rcx
 d28:	ff d0                	callq  *%rax
 d2a:	0f be d0             	movsbl %al,%edx
 d2d:	e9 20 f7 ff ff       	jmpq   452 <_Z17measure_sqrt_timeILy6EEvv+0x452>
 d32:	48 89 f1             	mov    %rsi,%rcx
 d35:	e8 00 00 00 00       	callq  d3a <_Z17measure_sqrt_timeILy6EEvv+0xd3a>
	this->_M_widen_init();
 d3a:	48 8b 06             	mov    (%rsi),%rax
 d3d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # d44 <_Z17measure_sqrt_timeILy6EEvv+0xd44>
	return this->do_widen(__c);
 d44:	ba 0a 00 00 00       	mov    $0xa,%edx
 d49:	48 8b 40 30          	mov    0x30(%rax),%rax
 d4d:	48 39 c8             	cmp    %rcx,%rax
 d50:	0f 84 c1 f9 ff ff    	je     717 <_Z17measure_sqrt_timeILy6EEvv+0x717>
 d56:	48 89 f1             	mov    %rsi,%rcx
 d59:	ff d0                	callq  *%rax
 d5b:	0f be d0             	movsbl %al,%edx
 d5e:	e9 b4 f9 ff ff       	jmpq   717 <_Z17measure_sqrt_timeILy6EEvv+0x717>
 d63:	48 89 d9             	mov    %rbx,%rcx
 d66:	e8 00 00 00 00       	callq  d6b <_Z17measure_sqrt_timeILy6EEvv+0xd6b>
	this->_M_widen_init();
 d6b:	48 8b 03             	mov    (%rbx),%rax
 d6e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # d75 <_Z17measure_sqrt_timeILy6EEvv+0xd75>
	return this->do_widen(__c);
 d75:	ba 0a 00 00 00       	mov    $0xa,%edx
 d7a:	48 8b 40 30          	mov    0x30(%rax),%rax
 d7e:	48 39 c8             	cmp    %rcx,%rax
 d81:	0f 84 65 f5 ff ff    	je     2ec <_Z17measure_sqrt_timeILy6EEvv+0x2ec>
 d87:	48 89 d9             	mov    %rbx,%rcx
 d8a:	ff d0                	callq  *%rax
 d8c:	0f be d0             	movsbl %al,%edx
 d8f:	e9 58 f5 ff ff       	jmpq   2ec <_Z17measure_sqrt_timeILy6EEvv+0x2ec>
 d94:	48 89 d9             	mov    %rbx,%rcx
 d97:	e8 00 00 00 00       	callq  d9c <_Z17measure_sqrt_timeILy6EEvv+0xd9c>
	this->_M_widen_init();
 d9c:	48 8b 03             	mov    (%rbx),%rax
 d9f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # da6 <_Z17measure_sqrt_timeILy6EEvv+0xda6>
	return this->do_widen(__c);
 da6:	ba 0a 00 00 00       	mov    $0xa,%edx
 dab:	48 8b 40 30          	mov    0x30(%rax),%rax
 daf:	48 39 c8             	cmp    %rcx,%rax
 db2:	0f 84 90 fd ff ff    	je     b48 <_Z17measure_sqrt_timeILy6EEvv+0xb48>
 db8:	48 89 d9             	mov    %rbx,%rcx
 dbb:	ff d0                	callq  *%rax
 dbd:	0f be d0             	movsbl %al,%edx
void measure_sqrt_time(void) { // --> Segmentation error occurs here according to gdb https://stackoverflow.com/questions/3718998/fixing-segmentation-faults-in-c
 dc0:	e9 83 fd ff ff       	jmpq   b48 <_Z17measure_sqrt_timeILy6EEvv+0xb48>
 dc5:	48 89 f1             	mov    %rsi,%rcx
 dc8:	e8 00 00 00 00       	callq  dcd <_Z17measure_sqrt_timeILy6EEvv+0xdcd>
 dcd:	48 8b 06             	mov    (%rsi),%rax
 dd0:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # dd7 <_Z17measure_sqrt_timeILy6EEvv+0xdd7>
 dd7:	ba 0a 00 00 00       	mov    $0xa,%edx
 ddc:	48 8b 40 30          	mov    0x30(%rax),%rax
 de0:	48 39 c8             	cmp    %rcx,%rax
 de3:	0f 84 e6 fc ff ff    	je     acf <_Z17measure_sqrt_timeILy6EEvv+0xacf>
 de9:	48 89 f1             	mov    %rsi,%rcx
 dec:	ff d0                	callq  *%rax
 dee:	0f be d0             	movsbl %al,%edx
 df1:	e9 d9 fc ff ff       	jmpq   acf <_Z17measure_sqrt_timeILy6EEvv+0xacf>
 df6:	90                   	nop
 df7:	90                   	nop
 df8:	90                   	nop
 df9:	90                   	nop
 dfa:	90                   	nop
 dfb:	90                   	nop
 dfc:	90                   	nop
 dfd:	90                   	nop
      { return _M_insert(__n); }
 dfe:	90                   	nop
 dff:	90                   	nop

Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	48 83 ec 28          	sub    $0x28,%rsp
   4:	e8 00 00 00 00       	callq  9 <main+0x9>
   9:	e8 00 00 00 00       	callq  e <main+0xe>
   e:	e8 00 00 00 00       	callq  13 <main+0x13>
{
  13:	e8 00 00 00 00       	callq  18 <main+0x18>
  18:	e8 00 00 00 00       	callq  1d <main+0x1d>
  static std::random_device device;
  1d:	e8 00 00 00 00       	callq  22 <main+0x22>
  22:	31 c0                	xor    %eax,%eax
  24:	48 83 c4 28          	add    $0x28,%rsp
  28:	c3                   	retq   
  29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000030 <_GLOBAL__sub_I__Z13random_doublev>:
  30:	48 83 ec 28          	sub    $0x28,%rsp
  34:	48 8d 0d 08 0a 00 00 	lea    0xa08(%rip),%rcx        # a43 <_ZStL8__ioinit+0x3b>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  3b:	e8 00 00 00 00       	callq  40 <_GLOBAL__sub_I__Z13random_doublev+0x10>
  40:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 47 <_GLOBAL__sub_I__Z13random_doublev+0x17>
      return this->_M_getval_pretr1();
  47:	48 83 c4 28          	add    $0x28,%rsp
  4b:	e9 00 00 00 00       	jmpq   50 <_ZZ13random_doublevE6device+0x10>
