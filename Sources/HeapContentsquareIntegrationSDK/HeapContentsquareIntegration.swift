import Foundation
import ContentsquareModule
import HeapContentsquareIntegrationImplementation

@objc
public class HeapContentsquareIntegration: NSObject {
    
    override private init() {
        super.init()
    }
    
    @objc
    public static func bind(sendHeapPageviewsToContentsquare: Bool, sendContentsquareScreenviewsToHeap: Bool) {
        HeapContentsquareIntegrationInternal.bind(
            sendHeapPageviewsToContentsquare: sendHeapPageviewsToContentsquare,
            sendContentsquareScreenviewsToHeap: sendContentsquareScreenviewsToHeap,
            contentSquare: Contentsquare.self,
            getReplayProperties: { timestamp in try Contentsquare.getReplayProperties(timestamp) })
    }
}
