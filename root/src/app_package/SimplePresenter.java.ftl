package ${packageName};

public class ${activityClass}Presenter extends BasePresenter<${activityClass}Repository> {

    private ${activityClass}Contract.View mView;

    public ${activityClass}Presenter(${activityClass}Contract.View view){
        mView = view;
        mModel = new ${activityClass}Repository();
    }
	
	/**
     * 访问数据前的网络判断，不需要可以删除
     */
    public void netAndData() {
        if (ConnectedUtils.isNetworkAvailable()) {
            getDate();
        } else {
            mView.showNetError();
        }
    }
	
	/**
     * 获取数据
     */
	public void getDate() {
	
	}
}