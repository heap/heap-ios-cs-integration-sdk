import Foundation
import HeapSwiftCore
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
            heap: Heap.shared,
            contentSquare: Contentsquare.self,
            getReplayProperties: { timestamp in try Contentsquare.getReplayProperties(timestamp) })
    }
}

extension Heap {
    @objc(onContentsquareScreenViewWithParameters:)
    private func onContentsquareScreenView(_ parameters: Any) {
        HeapContentsquareIntegrationInternal.shared?.onContentsquareScreenView(parameters as? [String: Any])
    }
    
    @objc
    private func extendOrCreateSession() -> NSDictionary? {
        HeapContentsquareIntegrationInternal.shared?.advanceOrExtendSession()
    }
}
