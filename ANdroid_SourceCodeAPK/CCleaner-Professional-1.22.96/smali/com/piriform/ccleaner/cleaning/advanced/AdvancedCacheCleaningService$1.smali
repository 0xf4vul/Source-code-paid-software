.class final Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->returnToAppWith(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

.field final synthetic val$result:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$1;->val$result:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$1;->val$result:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-static {v1}, Lcom/piriform/ccleaner/cleaning/advanced/q;->from(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)Lcom/piriform/ccleaner/cleaning/advanced/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Lcom/piriform/ccleaner/cleaning/advanced/q;)V

    .line 136
    return-void
.end method
