.class public final Landroid/support/v4/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/g/e$f;,
        Landroid/support/v4/g/e$a;,
        Landroid/support/v4/g/e$b;,
        Landroid/support/v4/g/e$c;,
        Landroid/support/v4/g/e$e;,
        Landroid/support/v4/g/e$d;
    }
.end annotation


# static fields
.field public static final a:Landroid/support/v4/g/d;

.field public static final b:Landroid/support/v4/g/d;

.field public static final c:Landroid/support/v4/g/d;

.field public static final d:Landroid/support/v4/g/d;

.field public static final e:Landroid/support/v4/g/d;

.field public static final f:Landroid/support/v4/g/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Landroid/support/v4/g/e$e;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/g/e$e;-><init>(Landroid/support/v4/g/e$c;Z)V

    sput-object v0, Landroid/support/v4/g/e;->a:Landroid/support/v4/g/d;

    .line 39
    new-instance v0, Landroid/support/v4/g/e$e;

    invoke-direct {v0, v1, v3}, Landroid/support/v4/g/e$e;-><init>(Landroid/support/v4/g/e$c;Z)V

    sput-object v0, Landroid/support/v4/g/e;->b:Landroid/support/v4/g/d;

    .line 47
    new-instance v0, Landroid/support/v4/g/e$e;

    sget-object v1, Landroid/support/v4/g/e$b;->a:Landroid/support/v4/g/e$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/g/e$e;-><init>(Landroid/support/v4/g/e$c;Z)V

    sput-object v0, Landroid/support/v4/g/e;->c:Landroid/support/v4/g/d;

    .line 55
    new-instance v0, Landroid/support/v4/g/e$e;

    sget-object v1, Landroid/support/v4/g/e$b;->a:Landroid/support/v4/g/e$b;

    invoke-direct {v0, v1, v3}, Landroid/support/v4/g/e$e;-><init>(Landroid/support/v4/g/e$c;Z)V

    sput-object v0, Landroid/support/v4/g/e;->d:Landroid/support/v4/g/d;

    .line 62
    new-instance v0, Landroid/support/v4/g/e$e;

    sget-object v1, Landroid/support/v4/g/e$a;->a:Landroid/support/v4/g/e$a;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/g/e$e;-><init>(Landroid/support/v4/g/e$c;Z)V

    sput-object v0, Landroid/support/v4/g/e;->e:Landroid/support/v4/g/d;

    .line 68
    sget-object v0, Landroid/support/v4/g/e$f;->a:Landroid/support/v4/g/e$f;

    sput-object v0, Landroid/support/v4/g/e;->f:Landroid/support/v4/g/d;

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 86
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 81
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static b(I)I
    .locals 1

    .prologue
    .line 91
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 95
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
