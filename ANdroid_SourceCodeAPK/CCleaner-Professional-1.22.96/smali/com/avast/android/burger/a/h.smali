.class public final Lcom/avast/android/burger/a/h;
.super Lcom/avast/android/burger/a/i;
.source "SourceFile"


# static fields
.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/burger/a/h;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0xc
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/avast/android/burger/a/h;->a()Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    sget-object v1, Lcom/avast/android/burger/a/h;->b:[I

    invoke-static {p1, v1}, Lcom/avast/android/burger/a/d;->a(I[I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/burger/a/i$a;->a([I)Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/burger/a/i;-><init>(Lcom/avast/android/burger/a/i$a;)V

    .line 28
    return-void
.end method
