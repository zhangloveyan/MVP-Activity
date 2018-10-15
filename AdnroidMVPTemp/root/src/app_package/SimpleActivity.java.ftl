package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
import android.support.annotation.NonNull;

import ${packageName}.R;
import ${packageName}.mvp.contract.${activityClass}Contract;
import ${packageName}.mvp.presenter.${activityClass}Presenter;
import com.zyw.horrarndoo.sdk.base.BasePresenter;
import com.zyw.horrarndoo.sdk.base.activity.BaseMVPCompatActivity;

import okhttp3.ResponseBody;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass}Activity extends BaseMVPCompatActivity<${activityClass}Contract.Abstract${activityClass}Presenter>
        implements ${activityClass}Contract.I${activityClass}View {
	
	@Override
    public void initView(Bundle savedInstanceState) {
<#include "../../../../common/jni_code_usage.java.ftl">
		// 初始化数据



		mPresenter.loadData();
    }
	
    @Override
    protected int getLayoutId() {
        return R.layout.${layoutName};
    }	
	
	@NonNull
    @Override
    public BasePresenter initPresenter() {
        return ${activityClass}Presenter.newInstance();
    }
	
	/**
     * 网络连接有问题显示的逻辑
     */
	@Override
    public void showNetworkError() {
        
    }
	
	@Override
    public void showData(ResponseBody body) {

    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
