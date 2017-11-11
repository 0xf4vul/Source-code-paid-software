.class final Lcom/piriform/ccleaner/cleaning/advanced/ag$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/ag;->toUserID()Lf/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lcom/google/firebase/auth/i;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ag;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$4;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lcom/google/firebase/auth/i;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ag$4;->call(Lcom/google/firebase/auth/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lcom/google/firebase/auth/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/google/firebase/auth/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
