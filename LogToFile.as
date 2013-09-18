package com.fastframework.module.d3log {
	import com.fastframework.io.ISaveText;
	import com.fastframework.log.ILog;


	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class LogToFile implements ILog {
		private var writer:ISaveText;
		private var imp:ILog;

		public function LogToFile(writer:ISaveText) {
			this.writer = writer;
		}

		public function log(str:String,debugLevel:int=0):void{
			if(imp!=null)imp.log(str,debugLevel);
			writer.append('log', str+'\n');
		}

		public function setLogger(logger : ILog) : void {
			imp = logger;
		}
	}
}
