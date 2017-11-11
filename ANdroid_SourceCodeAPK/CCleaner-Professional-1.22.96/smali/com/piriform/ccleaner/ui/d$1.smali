.class public final Lcom/piriform/ccleaner/ui/d$1;
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
    .line 33
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/d$1;->a:Lcom/piriform/ccleaner/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/d$1;->a:Lcom/piriform/ccleaner/ui/d;

    .line 1014
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/d;->b:Lcom/piriform/ccleaner/ui/d$c;

    .line 36
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/d$1;->a:Lcom/piriform/ccleaner/ui/d;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/d$c;->a(Lcom/piriform/ccleaner/ui/d;)V

    .line 37
    return-void
.end method
