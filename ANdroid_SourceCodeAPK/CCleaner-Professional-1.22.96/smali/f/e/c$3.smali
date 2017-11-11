.class public final Lf/e/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/c/a;


# direct methods
.method public constructor <init>(Lf/c/a;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lf/e/c$3;->a:Lf/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 264
    .line 1267
    iget-object v0, p0, Lf/e/c$3;->a:Lf/c/a;

    invoke-interface {v0}, Lf/c/a;->a()V

    .line 264
    return-void
.end method
