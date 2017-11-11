.class final Lcom/piriform/ccleaner/appmanager/ApplicationView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 52
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView$2;->a:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView$2;->a:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->d(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Lcom/piriform/ccleaner/q/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView$2;->a:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->d(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Lcom/piriform/ccleaner/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/ApplicationView$2;->a:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-static {v1}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->e(Lcom/piriform/ccleaner/appmanager/ApplicationView;)Lcom/piriform/ccleaner/core/data/AndroidPackage;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/piriform/ccleaner/q/b;->a(Ljava/lang/Object;Z)V

    .line 58
    :cond_0
    return-void
.end method
