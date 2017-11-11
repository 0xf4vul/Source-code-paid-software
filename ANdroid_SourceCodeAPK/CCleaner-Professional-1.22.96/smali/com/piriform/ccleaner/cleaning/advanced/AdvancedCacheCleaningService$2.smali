.class final Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->hideOverlayWithDelay(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->access$100(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)Lcom/piriform/ccleaner/cleaning/advanced/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->access$100(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)Lcom/piriform/ccleaner/cleaning/advanced/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/advanced/o;->hide()V

    .line 147
    :cond_0
    return-void
.end method
