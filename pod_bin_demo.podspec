# MARK: converted automatically by spec.py. @hgy

Pod::Spec.new do |s|
	s.name = 'pod_bin_demo'
	s.version = '1.0.0'
	s.description = '我只是一个测试的，主要是想要 s.dependency'
	s.license = 'MIT'
	s.summary = 'Seeyou'
	s.homepage = 'https://github.com/meiyoudev/IMYPublic'
	s.authors = { 'suliangjin' => 'suliangjin@xiaoyouzi.com' }
	s.source = { :git => 'git@github.com:zhouluyao2020/pod_bin_demo.git'}
        s.requires_arc = true
        s.ios.deployment_target = '9.0'
        s.source_files = 'pod_bin_demo/**/*.{h,m,c}'
        s.public_header_files = 'pod_bin_demo/**/*.h'


        s.dependency 'OffcnQuestionKit', '~> 0.2.3'
        s.dependency 'YYModel'
end
