.class final Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->startDelayedShutdownTask()V
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
    .line 168
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$4;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$4;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->FAILURE:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->onCacheCleaningCompleted(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    .line 172
    return-void
.end method
