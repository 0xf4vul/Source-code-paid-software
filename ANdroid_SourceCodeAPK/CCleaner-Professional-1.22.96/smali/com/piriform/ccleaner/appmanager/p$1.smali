.class final Lcom/piriform/ccleaner/appmanager/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/q/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/q/b",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/p;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/p;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/p$1;->a:Lcom/piriform/ccleaner/appmanager/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1022
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/p$1;->a:Lcom/piriform/ccleaner/appmanager/p;

    .line 2014
    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/p;->a:Lcom/piriform/ccleaner/appmanager/o;

    .line 1022
    invoke-virtual {v0, p1, p2}, Lcom/piriform/ccleaner/appmanager/o;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;Z)V

    .line 19
    return-void
.end method
