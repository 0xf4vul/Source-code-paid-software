.class final Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/ak$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$7;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final gotIt()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$7;->a:Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->b:Lcom/piriform/ccleaner/cleaning/advanced/b;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/b;->launchAccessibilitySettings()V

    .line 330
    return-void
.end method
