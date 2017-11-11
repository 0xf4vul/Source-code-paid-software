.class public final Lcom/piriform/ccleaner/ui/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/d;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/d$2;->a:Lcom/piriform/ccleaner/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/d$2;->a:Lcom/piriform/ccleaner/ui/d;

    .line 1014
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/d;->c:Lcom/piriform/ccleaner/ui/d$b;

    .line 44
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/d$2;->a:Lcom/piriform/ccleaner/ui/d;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/d$b;->a(Lcom/piriform/ccleaner/ui/d;)V

    .line 45
    return-void
.end method
