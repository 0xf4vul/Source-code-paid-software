.class public abstract Lcom/google/a/g$a;
.super Lcom/google/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/a/g;",
        "BuilderType:",
        "Lcom/google/a/g$a;",
        ">",
        "Lcom/google/a/a$a",
        "<TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/google/a/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/a/g$a;->c()Lcom/google/a/g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/a/g$a;->c()Lcom/google/a/g$a;

    move-result-object v0

    return-object v0
.end method
