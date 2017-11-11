.class final Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stopServiceWithDelay(J)V
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
    .line 152
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$3;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$3;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stopSelf()V

    .line 156
    return-void
.end method
