.class final Lcom/piriform/ccleaner/appmanager/ApplicationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/ApplicationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/ApplicationView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/ApplicationView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView$1;->a:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView$1;->a:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView$1;->a:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->b(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView$1;->a:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->c(Lcom/piriform/ccleaner/appmanager/ApplicationView;)V

    goto :goto_0
.end method
