.class public final Lcom/avast/android/burger/a/g;
.super Lcom/avast/android/burger/a/k;
.source "SourceFile"


# static fields
.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/burger/a/g;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0xb
    .end array-data
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 127
    .line 128
    invoke-static {}, Lcom/avast/android/burger/a/g;->a()Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    sget-object v1, Lcom/avast/android/burger/a/g;->c:[I

    .line 129
    invoke-static {p1, v1}, Lcom/avast/android/burger/a/d;->a(I[I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/burger/a/i$a;->a([I)Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0, p2, p3}, Lcom/avast/android/burger/a/k;-><init>(Lcom/avast/android/burger/a/i$a;J)V

    .line 132
    return-void
.end method
