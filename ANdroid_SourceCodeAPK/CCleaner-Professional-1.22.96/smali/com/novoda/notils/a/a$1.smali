.class final Lcom/novoda/notils/a/a$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novoda/notils/a/a;-><init>(Ljava/text/SimpleDateFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/text/SimpleDateFormat;

.field final synthetic b:Lcom/novoda/notils/a/a;


# direct methods
.method constructor <init>(Lcom/novoda/notils/a/a;Ljava/text/SimpleDateFormat;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/novoda/notils/a/a$1;->b:Lcom/novoda/notils/a/a;

    iput-object p2, p0, Lcom/novoda/notils/a/a$1;->a:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    .line 1041
    iget-object v0, p0, Lcom/novoda/notils/a/a$1;->a:Ljava/text/SimpleDateFormat;

    .line 38
    return-object v0
.end method
