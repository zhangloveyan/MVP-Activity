package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;

import java.util.List;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass} extends BaseActivity<${activityClass}Presenter>
        implements ${activityClass}Contract.View {
	
	@Override
    public int initView(Bundle savedInstanceState) {
		mPresenter = new ${activityClass}Presenter(this);
<#include "../../../../common/jni_code_usage.java.ftl">
        return R.layout.${layoutName};
    }
	
	@Override
    public ${activityClass}Presenter obtainPresenter() {
        return mPresenter;
    }
	
	@Override
    public void initData(Bundle savedInstanceState) {
		//这里写逻辑
    }
	
	/**
     * 网络连接有问题显示的逻辑
     */
	@Override
    public void showNetError() {
        
    }
	
	/**
     * 请求成功返回的数据
     * @param list 返回的数据
     */
    @Override
    public void showDate(List list) {

    }
	
	 /**
     * 网络链接请求出问题的处理
     * @param code 异常码
     * @param message 异常Message
     * @param type 区分不同请求，在new PregressSubscriber时带入
     * @return true 不弹msg  false 弹msg
     */
    @Override
    public boolean httpError(int code, String message, int type) {
        return false;
    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
