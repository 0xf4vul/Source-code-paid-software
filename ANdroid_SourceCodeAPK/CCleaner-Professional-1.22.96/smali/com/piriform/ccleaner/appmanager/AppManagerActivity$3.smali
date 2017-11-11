.class final Lcom/piriform/ccleaner/appmanager/AppManagerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/q/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/AppManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/q/c$a",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$3;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/q/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/q/c",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$3;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->e(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 114
    invoke-interface {p1}, Lcom/piriform/ccleaner/q/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$3;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->f(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 117
    :cond_0
    return-void
.end method
