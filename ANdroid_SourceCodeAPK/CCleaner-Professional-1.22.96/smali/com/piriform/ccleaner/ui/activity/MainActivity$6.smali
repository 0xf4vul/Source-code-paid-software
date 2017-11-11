.class final Lcom/piriform/ccleaner/ui/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/piriform/ccleaner/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Z)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$6;->b:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    iput-boolean p2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$6;->a:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$6;->b:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->d(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    .line 357
    :cond_0
    return-void
.end method
