.class public final Lcom/piriform/ccleaner/core/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Calendar;Lcom/piriform/ccleaner/core/a;)Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 16
    sget-object v0, Lcom/piriform/ccleaner/core/l$1;->a:[I

    invoke-virtual {p1}, Lcom/piriform/ccleaner/core/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 29
    :goto_0
    return-object p0

    .line 18
    :pswitch_0
    const/4 v0, 0x4

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 21
    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 24
    :pswitch_2
    const/4 v0, -0x3

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
