.class final Lcom/piriform/ccleaner/ui/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$5;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/a/a/d;)V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$5;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    .line 1274
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->m:Lcom/piriform/ccleaner/a/a;

    invoke-interface {v1, p1}, Lcom/piriform/ccleaner/a/a;->a(Lcom/piriform/ccleaner/a/a/d;)Landroid/content/Intent;

    move-result-object v1

    .line 1275
    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1276
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    :cond_0
    return-void
.end method
