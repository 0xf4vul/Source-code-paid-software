.class final Lcom/piriform/ccleaner/appmanager/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/q/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/g;
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
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/g;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/g;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/g$1;->a:Lcom/piriform/ccleaner/appmanager/g;

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
    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/g$1;->a:Lcom/piriform/ccleaner/appmanager/g;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/g;->a()V

    .line 29
    return-void
.end method
