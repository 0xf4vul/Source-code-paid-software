.class public final Lcom/avast/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/avast/b/h$1;

    invoke-direct {v0}, Lcom/avast/b/h$1;-><init>()V

    sput-object v0, Lcom/avast/b/h;->a:Ljava/lang/ThreadLocal;

    .line 22
    new-instance v0, Lcom/avast/b/h$2;

    invoke-direct {v0}, Lcom/avast/b/h$2;-><init>()V

    sput-object v0, Lcom/avast/b/h;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()Ljavax/crypto/Mac;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/avast/b/h;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    return-object v0
.end method

.method public static b()Ljavax/crypto/Mac;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/avast/b/h;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    return-object v0
.end method
